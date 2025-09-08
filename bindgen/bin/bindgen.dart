import 'package:bindgen/bindgen.dart';

void main(List<String> arguments) {
  generate(
    GenerationOptions(
      apiJsonLocation: '../../extension_api.json',
      outputDirectory: '../../lib/godot/generated',
      buildConfig: 'float_64',
    ),
  );
}
