#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
VERSION_FILE="${PACKAGE_ROOT}/third_party/godot.version"
GODOT_DIR="${PACKAGE_ROOT}/third_party/godot"

if [[ ! -f "${VERSION_FILE}" ]]; then
  echo "Missing Godot version file: ${VERSION_FILE}" >&2
  exit 1
fi

# shellcheck disable=SC1090
source "${VERSION_FILE}"

: "${GODOT_REPOSITORY:?Missing GODOT_REPOSITORY in ${VERSION_FILE}}"
: "${GODOT_REF:?Missing GODOT_REF in ${VERSION_FILE}}"
: "${GODOT_REVISION:?Missing GODOT_REVISION in ${VERSION_FILE}}"

current_status=""

mkdir -p "${PACKAGE_ROOT}/third_party"

# If the directory exists but has no .git of its own it is either an empty
# placeholder inside a parent git repo or was never cloned. Remove it so the
# clone step below can proceed cleanly.
if [[ -d "${GODOT_DIR}" && ! -e "${GODOT_DIR}/.git" ]]; then
  rmdir "${GODOT_DIR}" 2>/dev/null || {
    echo "Godot directory exists but is not a git checkout and is not empty: ${GODOT_DIR}" >&2
    echo "Remove it and rerun the build so libgodot can clone a fresh checkout." >&2
    exit 1
  }
fi

if [[ -d "${GODOT_DIR}" ]]; then
  if ! git -C "${GODOT_DIR}" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "Existing Godot directory is not a git checkout: ${GODOT_DIR}" >&2
    echo "Remove it and rerun the build so libgodot can clone a fresh checkout." >&2
    exit 1
  fi

  current_revision="$(git -C "${GODOT_DIR}" rev-parse HEAD)"
  current_status="$(git -C "${GODOT_DIR}" status --porcelain --untracked-files=no)"
  if [[ -n "${current_status}" && "${current_revision}" != "${GODOT_REVISION}" ]]; then
    echo "Godot checkout has local changes and cannot be moved to ${GODOT_REVISION}." >&2
    echo "Commit, stash, or remove ${GODOT_DIR} before changing the pinned revision." >&2
    exit 0
  fi
fi

if [[ ! -d "${GODOT_DIR}" ]]; then
  git clone --filter=blob:none --branch "${GODOT_REF}" "${GODOT_REPOSITORY}" "${GODOT_DIR}"
else
  current_remote="$(git -C "${GODOT_DIR}" remote get-url origin 2>/dev/null || true)"
  if [[ "${current_remote}" != "${GODOT_REPOSITORY}" ]]; then
    git -C "${GODOT_DIR}" remote set-url origin "${GODOT_REPOSITORY}"
  fi

  git -C "${GODOT_DIR}" fetch --force --prune origin "${GODOT_REF}"
fi

if ! git -C "${GODOT_DIR}" cat-file -e "${GODOT_REVISION}^{commit}" 2>/dev/null; then
  git -C "${GODOT_DIR}" fetch --force --prune --tags origin
fi

current_revision="$(git -C "${GODOT_DIR}" rev-parse HEAD)"
needs_checkout=0

if [[ "${current_revision}" != "${GODOT_REVISION}" ]]; then
  if [[ -z "${current_status}" ]] && git -C "${GODOT_DIR}" merge-base --is-ancestor "${GODOT_REVISION}" "${current_revision}" 2>/dev/null; then
    needs_checkout=0
  else
    needs_checkout=1
  fi
fi

# Ensure expected source files are materialized before native builds continue.
if [[ ! -f "${GODOT_DIR}/SConstruct" ]]; then
  if [[ -n "${current_status}" ]]; then
    echo "Godot checkout is missing expected files and has local changes: ${GODOT_DIR}" >&2
    echo "Clean or recreate the checkout before retrying the build." >&2
    exit 1
  fi
  needs_checkout=1
fi

if [[ "${needs_checkout}" -eq 1 ]]; then
  git -C "${GODOT_DIR}" checkout --detach "${GODOT_REVISION}"
fi
