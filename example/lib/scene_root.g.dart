part of 'scene_root.dart';

// **************************************************************************
// GodotClassGenerator
// **************************************************************************

GDExtensionObjectPtr _create_SceneRoot(
    Pointer<Void> classUserdata, int notifyPostinitialize) {
  final obj =
      GodotApi.classdbConstructObject3(StringNameCache.intern('Node3D'));
  final token = InstanceRegistry.createToken();
  GodotApi.objectSetInstance(obj, StringNameCache.intern('SceneRoot'), token);
  final instance = SceneRoot(obj);
  InstanceRegistry.bind(token, instance);
  return obj;
}

void _free_SceneRoot(Pointer<Void> classUserdata, Pointer<Void> instanceToken) {
  InstanceRegistry.unbind(instanceToken);
}

void _callVirtualReady_SceneRoot(Pointer<Void> instanceToken,
    Pointer<Pointer<Void>> args, Pointer<Void> rRet) {
  final self = InstanceRegistry.lookup<SceneRoot>(instanceToken);
  if (self == null) return;
  self.ready();
}

Pointer<NativeFunction<GDExtensionClassCallVirtualNative>>
    _getVirtual_SceneRoot(
        Pointer<Void> classUserdata, Pointer<Void> name, int hash) {
  if (StringNameCache.identical(name, StringNameCache.intern('_ready')) &&
      hash == 3218959716) {
    return Pointer.fromFunction<GDExtensionClassCallVirtualNative>(
        _callVirtualReady_SceneRoot);
  }
  return nullptr;
}

void _registerSceneRootClass() {
  final info = malloc<GDExtensionClassCreationInfo6>();
  info.ref
    ..isVirtual = 0
    ..isAbstract = 0
    ..isExposed = 1
    ..isRuntime = 0
    ..iconPath = nullptr
    ..setFunc = nullptr
    ..getFunc = nullptr
    ..getPropertyListFunc = nullptr
    ..freePropertyListFunc = nullptr
    ..propertyCanRevertFunc = nullptr
    ..propertyGetRevertFunc = nullptr
    ..validatePropertyFunc = nullptr
    ..notificationFunc = nullptr
    ..toStringFunc = nullptr
    ..referenceFunc = nullptr
    ..unreferenceFunc = nullptr
    ..createInstanceFunc =
        Pointer.fromFunction<GDExtensionClassCreateInstance3Native>(
                _create_SceneRoot)
            .cast()
    ..freeInstanceFunc =
        Pointer.fromFunction<GDExtensionClassFreeInstanceNative>(
                _free_SceneRoot)
            .cast()
    ..recreateInstanceFunc = nullptr
    ..getVirtualFunc = Pointer.fromFunction<GDExtensionClassGetVirtual2Native>(
            _getVirtual_SceneRoot)
        .cast()
    ..getVirtualCallDataFunc = nullptr
    ..callVirtualWithDataFunc = nullptr
    ..classUserdata = nullptr;
  GodotApi.classdbRegisterExtensionClass6(
    GodotApi.library,
    StringNameCache.intern('SceneRoot'),
    StringNameCache.intern('Node3D'),
    info,
  );
  malloc.free(info);
}

void registerSceneRootWithRegistry() {
  GodotClassRegistry.register(_registerSceneRootClass);
}
