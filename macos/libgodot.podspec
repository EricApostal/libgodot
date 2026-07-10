#
# libgodot.podspec
#
require 'fileutils'

Pod::Spec.new do |s|
  s.name             = 'libgodot'
  s.version          = '0.0.1'
  s.summary          = 'Embeds a custom Godot engine build into a Flutter macOS app.'
  s.description      = <<-DESC
Embeds a custom libgodot build into a Flutter macOS app, rendering the engine
offscreen into an IOSurface and bridging it into a Flutter Texture.
                       DESC
  s.homepage         = 'https://github.com/EricApostal/libgodot'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Eric Apostal' => 'ehapostal04@gmail.com' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'

  s.dependency 'FlutterMacOS'
  s.frameworks = 'CoreVideo', 'IOSurface'

  s.platform = :osx, '10.15'
  s.swift_version = '5.0'

  godot_src = ENV['GODOT_SRC'] || File.expand_path('../third_party/godot', __dir__)
  build_script = File.join(__dir__, 'build_godot_macos.sh')
  vendored_dylib = File.join(__dir__, 'libgodot.dylib')
  core_dylib = File.join(__dir__, 'libgodot_core.dylib')
  unless File.exist?(vendored_dylib) && File.exist?(core_dylib)
    system(build_script) or raise "libgodot: #{build_script} failed; see output above."
  end

  s.vendored_libraries = 'libgodot.dylib', 'libgodot_core.dylib'
  s.preserve_paths = 'libgodot.dylib', 'libgodot_core.dylib', 'build_godot_macos.sh'

  s.script_phases = [
    {
      :name => 'Build libgodot (scons & core)',
      :script => 'bash "${PODS_TARGET_SRCROOT}/build_godot_macos.sh"',
      :execution_position => :before_compile,
      :always_out_of_date => '1',
    },
    {
      :name               => 'Deploy Godot Bundle into App',
      :execution_position => :after_compile,
      :script             => <<~SCRIPT
        set -e
        POD_DIR="${PODS_TARGET_SRCROOT}"
        APP_BUILD_DIR=$(dirname "${BUILT_PRODUCTS_DIR}")
        APP_NAME_FILE="${PODS_ROOT}/../Flutter/ephemeral/.app_filename"

        if [ -f "$APP_NAME_FILE" ]; then
          APP_NAME=$(cat "$APP_NAME_FILE")
        else
          EXISTING_APP=$(ls -1d "${APP_BUILD_DIR}"/*.app 2>/dev/null | head -n 1)
          if [ -n "$EXISTING_APP" ]; then
            APP_NAME=$(basename "$EXISTING_APP")
          else
            APP_NAME="Runner.app"
          fi
        fi

        APP_PATH="${APP_BUILD_DIR}/${APP_NAME}"
        DEST_FRAMEWORKS_DIR="${APP_PATH}/Contents/Frameworks"
        DEST_RES_DIR="${APP_PATH}/Contents/Resources"

        mkdir -p "${DEST_FRAMEWORKS_DIR}"
        mkdir -p "${DEST_RES_DIR}"

        cp -af "${POD_DIR}/libgodot.dylib" "${DEST_FRAMEWORKS_DIR}/" || true
        cp -af "${POD_DIR}/libgodot_core.dylib" "${DEST_FRAMEWORKS_DIR}/" || true
        cp -af "${POD_DIR}/libgodot.dylib" "${DEST_RES_DIR}/" || true
        cp -af "${POD_DIR}/libgodot_core.dylib" "${DEST_RES_DIR}/" || true
      SCRIPT
    }
  ]

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'HEADER_SEARCH_PATHS' => "\"#{godot_src}\" \"#{File.expand_path('../native/godot_core', __dir__)}\"",
    'LIBRARY_SEARCH_PATHS' => [
      '$(inherited)',
      '"${PODS_TARGET_SRCROOT}"'
    ].join(' '),
    'LD_RUNPATH_SEARCH_PATHS' => [
      '$(inherited)',
      '@executable_path/../Resources',
      '@loader_path/../Resources',
      '@executable_path/../Frameworks',
      '@loader_path/../Frameworks'
    ].join(' '),
    'OTHER_LDFLAGS' => '$(inherited) -framework FlutterMacOS -lgodot -lgodot_core',
  }
end
