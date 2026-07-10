import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:godot_dart/godot_dart.dart';

import 'orbiting_body.dart';
import 'spinning_controller.dart';

part 'scene_root.g.dart';

/// The demo project's entire scene, built up programmatically from Dart:
/// a camera, three lights (one directional "sun" + two colored point
/// lights), a spinning cube, a ground plane, and a handful of spheres
/// orbiting the cube at different speeds/colors. No GDScript, no
/// hand-authored `.tscn` node tree beyond this single root node - see
/// assets/godot_project/main.tscn (`type="SceneRoot"`).
@GodotClass()
class SceneRoot extends Node3D {
  SceneRoot(super.nativePtr);

  void _ready() {
    _addCamera();
    _addLights();
    _addGroundPlane();
    _addHeroCube();
    _addOrbitingSpheres();
  }

  void _addCamera() {
    final camera = Camera3D.create();
    addChild(camera, false, 0);
    camera.setPosition(const Vector3(0, 3, 7));
    camera.lookAt(const Vector3(0, 0, 0), const Vector3(0, 1, 0), false);
    camera.makeCurrent();
  }

  void _addLights() {
    final sun = DirectionalLight3D.create();
    addChild(sun, false, 0);
    sun.setRotation(const Vector3(-0.9, 0.5, 0));
    sun.setColor(const Color(1.0, 0.95, 0.85, 1.0));
    sun.setParam(0, 1.1); // Light3D.PARAM_ENERGY

    final redLight = OmniLight3D.create();
    addChild(redLight, false, 0);
    redLight.setPosition(const Vector3(-3, 2, 2));
    redLight.setColor(const Color(1.0, 0.25, 0.2, 1.0));
    redLight.setParam(0, 6.0);

    final blueLight = OmniLight3D.create();
    addChild(blueLight, false, 0);
    blueLight.setPosition(const Vector3(3, 2, -2));
    blueLight.setColor(const Color(0.2, 0.4, 1.0, 1.0));
    blueLight.setParam(0, 6.0);
  }

  void _addGroundPlane() {
    final ground = MeshInstance3D.create();
    addChild(ground, false, 0);
    final mesh = BoxMesh.create();
    mesh.setSize(const Vector3(12, 0.2, 12));
    ground.setMesh(mesh);
    ground.setPosition(const Vector3(0, -1.5, 0));
    final material = StandardMaterial3D.create();
    material.setAlbedo(const Color(0.25, 0.28, 0.32, 1.0));
    ground.setMaterialOverride(material);
  }

  void _addHeroCube() {
    final cube = InstanceRegistry.constructAndWrap<SpinningController>('SpinningController')!;
    addChild(cube, false, 0);
    final mesh = BoxMesh.create();
    mesh.setSize(const Vector3(1.2, 1.2, 1.2));
    cube.setMesh(mesh);
    final material = StandardMaterial3D.create();
    material.setAlbedo(const Color(0.95, 0.55, 0.1, 1.0));
    cube.setMaterialOverride(material);
    cube.yawSpeed = 0.8;
    cube.rollSpeed = 0.5;
  }

  void _addOrbitingSpheres() {
    const colors = [
      Color(0.9, 0.2, 0.3, 1.0),
      Color(0.2, 0.8, 0.3, 1.0),
      Color(0.3, 0.5, 0.95, 1.0),
      Color(0.9, 0.85, 0.2, 1.0),
    ];
    for (var i = 0; i < colors.length; i++) {
      final sphere = InstanceRegistry.constructAndWrap<OrbitingBody>('OrbitingBody')!;
      addChild(sphere, false, 0);
      final mesh = SphereMesh.create();
      mesh.setRadius(0.35);
      mesh.setHeight(0.7);
      sphere.setMesh(mesh);
      final material = StandardMaterial3D.create();
      material.setAlbedo(colors[i]);
      sphere.setMaterialOverride(material);
      sphere.radius = 2.2 + i * 0.8;
      sphere.orbitSpeed = 0.9 - i * 0.15;
      sphere.spinSpeed = 3.0;
      sphere.verticalOffset = (i.isEven ? 1 : -1) * 0.3;
    }
  }
}
