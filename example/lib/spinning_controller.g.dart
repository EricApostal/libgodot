part of 'spinning_controller.dart';

// **************************************************************************
// GodotClassGenerator
// **************************************************************************

GDExtensionObjectPtr _create_SpinningController(
    Pointer<Void> classUserdata, int notifyPostinitialize) {
  final obj = GodotApi.classdbConstructObject3(
      StringNameCache.intern('MeshInstance3D'));
  final token = InstanceRegistry.createToken();
  GodotApi.objectSetInstance(
      obj, StringNameCache.intern('SpinningController'), token);
  final instance = SpinningController(obj);
  InstanceRegistry.bind(token, instance);
  return obj;
}

void _free_SpinningController(
    Pointer<Void> classUserdata, Pointer<Void> instanceToken) {
  InstanceRegistry.unbind(instanceToken);
}

void _callVirtualProcess_SpinningController(Pointer<Void> instanceToken,
    Pointer<Pointer<Void>> args, Pointer<Void> rRet) {
  final self = InstanceRegistry.lookup<SpinningController>(instanceToken);
  if (self == null) return;
  final arg0 = args[0].cast<Double>().value;
  self.process(arg0);
}

Pointer<NativeFunction<GDExtensionClassCallVirtualNative>>
    _getVirtual_SpinningController(
        Pointer<Void> classUserdata, Pointer<Void> name, int hash) {
  if (StringNameCache.identical(name, StringNameCache.intern('_process')) &&
      hash == 373806689) {
    return Pointer.fromFunction<GDExtensionClassCallVirtualNative>(
        _callVirtualProcess_SpinningController);
  }
  return nullptr;
}

void _registerSpinningControllerClass() {
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
                _create_SpinningController)
            .cast()
    ..freeInstanceFunc =
        Pointer.fromFunction<GDExtensionClassFreeInstanceNative>(
                _free_SpinningController)
            .cast()
    ..recreateInstanceFunc = nullptr
    ..getVirtualFunc = Pointer.fromFunction<GDExtensionClassGetVirtual2Native>(
            _getVirtual_SpinningController)
        .cast()
    ..getVirtualCallDataFunc = nullptr
    ..callVirtualWithDataFunc = nullptr
    ..classUserdata = nullptr;
  GodotApi.classdbRegisterExtensionClass6(
    GodotApi.library,
    StringNameCache.intern('SpinningController'),
    StringNameCache.intern('MeshInstance3D'),
    info,
  );
  malloc.free(info);
}

void registerSpinningControllerWithRegistry() {
  GodotClassRegistry.register(_registerSpinningControllerClass);
}
