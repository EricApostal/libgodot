part of 'orbiting_body.dart';

// **************************************************************************
// GodotClassGenerator
// **************************************************************************

GDExtensionObjectPtr _create_OrbitingBody(
    Pointer<Void> classUserdata, int notifyPostinitialize) {
  final obj = GodotApi.classdbConstructObject3(
      StringNameCache.intern('MeshInstance3D'));
  final token = InstanceRegistry.createToken();
  GodotApi.objectSetInstance(
      obj, StringNameCache.intern('OrbitingBody'), token);
  final instance = OrbitingBody(obj);
  InstanceRegistry.bind(token, instance);
  return obj;
}

void _free_OrbitingBody(
    Pointer<Void> classUserdata, Pointer<Void> instanceToken) {
  InstanceRegistry.unbind(instanceToken);
}

void _callVirtualProcess_OrbitingBody(Pointer<Void> instanceToken,
    Pointer<Pointer<Void>> args, Pointer<Void> rRet) {
  final self = InstanceRegistry.lookup<OrbitingBody>(instanceToken);
  if (self == null) return;
  final arg0 = args[0].cast<Double>().value;
  self._process(arg0);
}

Pointer<NativeFunction<GDExtensionClassCallVirtualNative>>
    _getVirtual_OrbitingBody(
        Pointer<Void> classUserdata, Pointer<Void> name, int hash) {
  if (StringNameCache.identical(name, StringNameCache.intern('_process'))) {
    return Pointer.fromFunction<GDExtensionClassCallVirtualNative>(
        _callVirtualProcess_OrbitingBody);
  }
  return nullptr;
}

void _registerOrbitingBodyClass() {
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
                _create_OrbitingBody)
            .cast()
    ..freeInstanceFunc =
        Pointer.fromFunction<GDExtensionClassFreeInstanceNative>(
                _free_OrbitingBody)
            .cast()
    ..recreateInstanceFunc = nullptr
    ..getVirtualFunc = Pointer.fromFunction<GDExtensionClassGetVirtual2Native>(
            _getVirtual_OrbitingBody)
        .cast()
    ..getVirtualCallDataFunc = nullptr
    ..callVirtualWithDataFunc = nullptr
    ..classUserdata = nullptr;
  GodotApi.classdbRegisterExtensionClass6(
    GodotApi.library,
    StringNameCache.intern('OrbitingBody'),
    StringNameCache.intern('MeshInstance3D'),
    info,
  );
  malloc.free(info);
}

void registerOrbitingBodyWithRegistry() {
  GodotClassRegistry.register(_registerOrbitingBodyClass);
}
