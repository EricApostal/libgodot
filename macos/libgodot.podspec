#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint libgodot.podspec` to validate before publishing.
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
  s.source_files = 'Classes/**/*'

  s.dependency 'FlutterMacOS'
  s.frameworks = 'CoreVideo', 'IOSurface'

  s.platform = :osx, '10.15'
  s.swift_version = '5.0'

  # --- libgodot engine source/binary discovery -----------------------------
  #
  # third_party/godot in this repo is currently an unpopulated submodule
  # placeholder (no .gitmodules wiring yet), so the engine fork checkout is
  # located via GODOT_SRC, falling back to third_party/godot in case it gets
  # populated later (e.g. once the submodule is fixed up).
  godot_src = ENV['GODOT_SRC'] || File.expand_path('../third_party/godot', __dir__)
  unless File.directory?(File.join(godot_src, 'core', 'extension'))
    raise "libgodot: Godot engine source not found at '#{godot_src}'.\n" \
          "Set GODOT_SRC to your godot fork checkout, e.g.:\n" \
          "  export GODOT_SRC=/path/to/godot\n" \
          "(third_party/godot is currently an empty placeholder; the submodule isn't wired up yet.)"
  end

  dylib_candidates = Dir.glob(File.join(godot_src, 'bin', 'libgodot.macos.*.dylib'))
  if dylib_candidates.empty?
    raise "libgodot: No libgodot.macos.*.dylib found under '#{godot_src}/bin'.\n" \
          "Build it first with:\n" \
          "  cd #{godot_src} && scons platform=macos target=template_debug " \
          "library_type=shared_library arch=arm64 disable_path_overrides=no"
  end
  dylib_src = dylib_candidates.sort_by { |p| File.mtime(p) }.last

  # Copy into this pod's own directory and fix up the install name: scons
  # leaves a relative "bin/libgodot..." LC_ID_DYLIB, which only resolves if
  # the process's cwd happens to be godot_src/.. ; retarget it to @rpath so
  # it resolves correctly once CocoaPods embeds it into the app bundle.
  vendored_dylib = File.join(__dir__, 'libgodot.dylib')
  FileUtils.cp(dylib_src, vendored_dylib, preserve: false)
  FileUtils.chmod('u+w', vendored_dylib)
  system('install_name_tool', '-id', '@rpath/libgodot.dylib', vendored_dylib) \
    or raise "libgodot: install_name_tool failed to retarget #{vendored_dylib}"

  s.vendored_libraries = 'libgodot.dylib'
  s.preserve_paths = 'libgodot.dylib'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'HEADER_SEARCH_PATHS' => "\"#{godot_src}\"",
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17',
    'CLANG_CXX_LIBRARY' => 'libc++',
    'CLANG_ENABLE_MODULES' => 'YES',
    'OTHER_LDFLAGS' => '$(inherited) -framework FlutterMacOS',
  }
end
