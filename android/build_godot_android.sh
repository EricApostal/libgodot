#!/usr/bin/env bash
# Builds the Godot Android library (godot-lib.template_debug.aar) that this plugin depends on.
#
# Unlike the Linux plugin (a single `scons` invocation producing a shared library CMake can pick
# up directly), Android needs a second step: `scons` compiles the native library, and Gradle then
# packages it together with the org.godotengine.godot Kotlin/Java sources into an AAR. Gradle's own
# `:lib:assembleTemplateDebug` task is *supposed* to invoke scons itself, but that wiring doesn't
# reliably kick off the native build (observed producing an AAR with no native libraries in it), so
# this script runs both steps explicitly instead of relying on it.
#
# `disable_path_overrides=no` is required so `--path` (used to point the engine at the project
# directory extracted from Flutter's assets, see LibgodotPlugin.kt) isn't rejected -- template
# builds disable that by default. See third_party/godot/tests/offscreen_embed_test/build.sh for
# the same requirement on macOS.
#
# Usage: ./build_godot_android.sh [scons arch, default: arm64]
#
# Requires ANDROID_HOME (or ANDROID_SDK_ROOT) to point at an Android SDK with the NDK version
# named in third_party/godot/platform/android/java/app/config.gradle installed.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GODOT_DIR="$(cd "${SCRIPT_DIR}/../third_party/godot" && pwd)"
ARCH="${1:-arm64}"

ANDROID_SDK_ROOT="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-}}"
if [[ -z "${ANDROID_SDK_ROOT}" ]]; then
	echo "error: ANDROID_HOME (or ANDROID_SDK_ROOT) must be set to an Android SDK path." >&2
	exit 1
fi

echo "== Building libgodot_android.so (arch=${ARCH}) via scons =="
(
	cd "${GODOT_DIR}"
	ANDROID_HOME="${ANDROID_SDK_ROOT}" scons \
		platform=android \
		target=template_debug \
		arch="${ARCH}" \
		disable_path_overrides=no \
		debug_symbols=yes \
		-j"$(nproc)"
)

JAVA_DIR="${GODOT_DIR}/platform/android/java"
if [[ ! -f "${JAVA_DIR}/local.properties" ]]; then
	echo "sdk.dir=${ANDROID_SDK_ROOT}" > "${JAVA_DIR}/local.properties"
fi

echo "== Packaging godot-lib.template_debug.aar via Gradle =="
(
	cd "${JAVA_DIR}"
	ANDROID_HOME="${ANDROID_SDK_ROOT}" ANDROID_SDK_ROOT="${ANDROID_SDK_ROOT}" \
		./gradlew :lib:assembleTemplateDebug --console=plain
)

AAR="${JAVA_DIR}/lib/build/outputs/aar/godot-lib.template_debug.aar"
echo "Built ${AAR}"
