#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint libgodot.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'libgodot'
  s.version          = '0.0.1'
  s.summary          = 'Godot engine integration for Flutter (macOS).' 
  s.description      = <<-DESC
Flutter macOS plugin bridging to a vendored Godot engine xcframework while providing Swift glue code.
  DESC
  s.homepage         = 'http://example.com'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  # Provide a dummy git source (required primary key) even though we vend via path.
  s.source           = { :git => 'https://example.com/libgodot.git', :tag => s.version.to_s }

  # Build (if needed) prior to integrating subspecs; subspecs themselves cannot have prepare_command.
  s.prepare_command = <<-CMD
    echo "[libgodot] Root prepare step: verifying libgodot.xcframework"
    if [ ! -d "libgodot.xcframework" ]; then
      echo "xcframework missing; attempting build...";
      if [ -d build ]; then cd build; fi
      if [ -x build.sh ]; then chmod +x build.sh; ./build.sh; else echo "build.sh not found"; fi
    else
      echo "xcframework present."
    fi
  CMD

  # Work around CocoaPods/Flutter issue by splitting source files and vendored framework
  # into subspecs. Both are part of default_subspecs so a simple `pod libgodot` install
  # includes engine + plugin code without Podfile customization.
  s.default_subspecs = ['Core', 'Engine']

  s.subspec 'Core' do |core|
    core.source_files = 'libgodot/Sources/libgodot/**/*'
    core.dependency 'FlutterMacOS'
  end

  s.subspec 'Engine' do |eng|
    eng.vendored_frameworks = 'libgodot.xcframework'
    eng.dependency 'FlutterMacOS'
  end

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
