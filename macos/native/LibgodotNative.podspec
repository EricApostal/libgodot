Pod::Spec.new do |s|
  s.name             = 'LibgodotNative'
  s.version          = '0.0.1'
  s.summary          = 'Workaround for Flutter/CocoaPods mixed source + vendored framework issue.'
  s.description      = <<-DESC
Provides the prebuilt Godot engine xcframework for the Flutter plugin.
  DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  # When used via :path in Podfile, s.source is ignored, but set a benign value.
  s.source           = { :git => 'https://example.com/placeholder.git', :tag => '0.0.1' }
  s.module_name      = 'LibgodotNative'

  s.prepare_command = <<-CMD
    echo "Building libgodot native library..."
    cd ..
    cd build
    chmod +x build.sh
    ./build.sh
  CMD

  s.vendored_frameworks = '../libgodot.xcframework'

  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
