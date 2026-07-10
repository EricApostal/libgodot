#!/usr/bin/env bash
# Builds libgodot.macos.*.dylib (the engine build this plugin embeds) via scons, then vendors
# it into this directory as libgodot.dylib with its install name retargeted to @rpath, which is
# what macos/libgodot.podspec's `vendored_libraries` links against.
#
# Mirrors android/build_godot_android.sh's role for macOS. Invoked automatically:
#   - from libgodot.podspec at `pod install` time, if no vendored dylib exists yet, and
#   - via the podspec's Xcode script_phase, on every build of a target depending on this pod,
#     so engine-side changes (this repo's third_party/godot checkout) are picked up without
#     ever needing to remember to rebuild or re-run `pod install` by hand.
#
# scons is incremental, so re-running this when nothing changed is cheap (a few seconds).
#
# `disable_path_overrides=no` is required so `--path` (used by GodotTexture.mm/LibgodotPlugin.mm)
# isn't rejected -- template builds disable that by default. See
# third_party/godot/tests/offscreen_embed_test/build.sh for the same requirement.
#
# Usage: ./build_godot_macos.sh [scons arch, default: arm64]
# Env: GODOT_SRC to override the engine checkout location (default: ../third_party/godot).

set -euo pipefail

# Xcode's Run Script build phases execute with a minimal PATH that doesn't include Homebrew on
# Apple Silicon (/opt/homebrew) or Intel (/usr/local); scons/python3 live there for most setups.
export PATH="/opt/homebrew/bin:/usr/local/bin:${PATH}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENSURE_SCRIPT="${SCRIPT_DIR}/../tool/ensure_godot_source.sh"
if [[ -f "${ENSURE_SCRIPT}" ]]; then
  bash "${ENSURE_SCRIPT}"
fi

GODOT_DIR="${GODOT_SRC:-$(cd "${SCRIPT_DIR}/../third_party/godot" && pwd)}"
ARCH="${1:-arm64}"

if [[ ! -d "${GODOT_DIR}/core/extension" ]]; then
  echo "error: Godot engine source not found at '${GODOT_DIR}'." >&2
  echo "Set GODOT_SRC to your godot fork checkout, e.g.:" >&2
  echo "  export GODOT_SRC=/path/to/godot" >&2
  exit 1
fi

echo "== Building libgodot.macos dylib (arch=${ARCH}) via scons =="
(
  cd "${GODOT_DIR}"
  scons \
    platform=macos \
    target=template_debug \
    library_type=shared_library \
    arch="${ARCH}" \
    disable_path_overrides=no \
    debug_symbols=yes \
    -j"$(sysctl -n hw.ncpu)"
)

DYLIB="$(ls -t "${GODOT_DIR}"/bin/libgodot.macos.*.dylib 2>/dev/null | head -1)"
if [[ -z "${DYLIB}" ]]; then
  echo "error: scons finished but no libgodot.macos.*.dylib found under ${GODOT_DIR}/bin" >&2
  exit 1
fi

VENDORED_DYLIB="${SCRIPT_DIR}/libgodot.dylib"
if [[ ! -f "${VENDORED_DYLIB}" ]] || ! cmp -s "${DYLIB}" "${VENDORED_DYLIB}"; then
  cp "${DYLIB}" "${VENDORED_DYLIB}"
  chmod u+w "${VENDORED_DYLIB}"
  install_name_tool -id "@rpath/libgodot.dylib" "${VENDORED_DYLIB}"
  echo "Vendored $(basename "${DYLIB}") -> ${VENDORED_DYLIB}"
else
  echo "Vendored libgodot.dylib already up to date."
fi

CORE_DYLIB="${SCRIPT_DIR}/libgodot_core.dylib"
echo "== Building libgodot_core.dylib (arch=${ARCH}) =="
clang++ -std=c++17 -shared -fPIC -arch "${ARCH}" \
  -I"${GODOT_DIR}" \
  -I"${SCRIPT_DIR}/../native/godot_core" \
  -L"${SCRIPT_DIR}" -lgodot \
  -install_name "@rpath/libgodot_core.dylib" \
  "${SCRIPT_DIR}/../native/godot_core/godot_core.cpp" \
  "${SCRIPT_DIR}/../native/godot_core/godot_core_desktop.cpp" \
  -o "${CORE_DYLIB}"
echo "Built -> ${CORE_DYLIB}"

