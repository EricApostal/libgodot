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
  # godot_core.h pulls in third_party/godot engine headers that only resolve via this pod's own
  # HEADER_SEARCH_PATHS below; if it were a public header (CocoaPods' default for use_frameworks!
  # builds), Xcode's module dependency scanner tries to build it standalone as part of the
  # framework's umbrella header and can't find those engine headers in that context.
  s.private_header_files = 'Classes/godot_core.h'

  # ../native/godot_core is the shared C++ core (used identically by linux/CMakeLists.txt) that
  # combined_init_func/resize/pump logic used to be hand-duplicated into Classes/GodotTexture.mm.
  # CocoaPods' source_files can't reach outside the pod's own root (`.` above), so it's copied
  # into Classes/ here instead of glob'd in directly -- re-run `pod install` after editing it.
  Dir.glob(File.join(File.expand_path('../native/godot_core', __dir__), '*.{h,cpp}')).each do |shared_src|
    FileUtils.cp(shared_src, File.join(__dir__, 'Classes', File.basename(shared_src)), preserve: false)
  end

  s.dependency 'FlutterMacOS'
  s.frameworks = 'CoreVideo', 'IOSurface'

  s.platform = :osx, '10.15'
  s.swift_version = '5.0'

  # --- libgodot engine build -------------------------------------------------
  #
  # build_godot_macos.sh builds third_party/godot via scons and vendors the resulting dylib
  # here as libgodot.dylib. It's run here (at `pod install`) so a first-time checkout has a
  # vendored dylib to point vendored_libraries at below, and again via script_phase further
  # down so every subsequent Xcode build picks up engine-side changes automatically -- nobody
  # should ever need to remember to run this by hand.
  godot_src = ENV['GODOT_SRC'] || File.expand_path('../third_party/godot', __dir__)
  build_script = File.join(__dir__, 'build_godot_macos.sh')
  vendored_dylib = File.join(__dir__, 'libgodot.dylib')
  unless File.exist?(vendored_dylib)
    system(build_script) or raise "libgodot: #{build_script} failed; see output above."
  end

  s.vendored_libraries = 'libgodot.dylib'
  s.preserve_paths = 'libgodot.dylib', 'build_godot_macos.sh'

  s.script_phase = {
    :name => 'Build libgodot (scons)',
    :script => 'bash "${PODS_TARGET_SRCROOT}/build_godot_macos.sh"',
    :execution_position => :before_compile,
    :always_out_of_date => '1',
  }

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'HEADER_SEARCH_PATHS' => "\"#{godot_src}\"",
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17',
    'CLANG_CXX_LIBRARY' => 'libc++',
    'CLANG_ENABLE_MODULES' => 'YES',
    'OTHER_LDFLAGS' => '$(inherited) -framework FlutterMacOS',
  }
end
