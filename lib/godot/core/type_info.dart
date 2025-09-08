import 'dart:ffi';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

import '../generated/builtins.dart';
import '../generated/global_constants.dart';
import '../variant/variant.dart';
import 'property_info.dart';
import 'rpc_info.dart';
import 'gdextension.dart';
import 'gdextension_ffi_bindings.dart';

class MethodInfo {
  final String name;
  final String? dartMethodName;
  final List<PropertyInfo> args;
  final PropertyInfo? returnInfo;
  final MethodFlags flags;

  MethodInfo({
    required this.name,
    this.dartMethodName,
    required this.args,
    this.returnInfo,
    this.flags = MethodFlags.methodFlagsDefault,
  });

  Dictionary asDict() {
    var dict = Dictionary();
    dict[Variant('name')] = Variant(name);
    var argsArray = Array();
    for (int i = 0; i < args.length; ++i) {
      argsArray.append(Variant(args[i].asDict()));
    }
    dict[Variant('args')] = Variant(argsArray);
    if (returnInfo != null) {
      dict[Variant('return')] = Variant(returnInfo?.asDict());
    }
    dict[Variant('flags')] = Variant(flags);

    return dict;
  }
}

/// ScriptInfo contains information about types accessible as Scripts
@immutable
class ScriptInfo {
  final List<MethodInfo> methods;
  final List<MethodInfo> signals;
  final List<PropertyInfo> properties;
  final List<RpcInfo> rpcInfo;

  const ScriptInfo({
    required this.methods,
    required this.signals,
    required this.properties,
    required this.rpcInfo,
  });

  bool hasMethod(String methodName) => getMethodInfo(methodName) != null;
  bool hasSignal(String signalName) => getSignalInfo(signalName) != null;

  MethodInfo? getMethodInfo(String methodName) {
    return methods.firstWhereOrNull((e) => e.name == methodName);
  }

  MethodInfo? getSignalInfo(String signalName) {
    return signals.firstWhereOrNull((e) => e.name == signalName);
  }

  PropertyInfo? getPropertyInfo(String propertyName) {
    return properties.firstWhereOrNull((e) => e.name == propertyName);
  }
}

/// [TypeInfo] contains information about the type meant to send to Godot
/// binding methods.
///
/// Most Godot bound classes have this generated for them as a static member
/// (Object.sTypeInfo) but for classes you create, you will need to add it.
///
/// For Dart builtin types, use [TypeInfo.forType]
@immutable
class TypeInfo {
  /// The Type for this info
  final Type type;

  /// The name of the class
  final StringName className;

  /// The first class in the inheritance tree that is implemented
  /// natively in Godot. Can be the class itself
  final StringName nativeTypeName;

  /// Whether this class is a "global" class and should appear in the
  /// node creation list.
  final bool isGlobalClass;

  /// The Parent Class of the class
  final Type? parentType;

  /// The Variant type of this class. This is set to
  /// [GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_OBJECT] by default which
  /// is usually correct for most user created classes
  final GDExtensionVariantType variantType;

  /// The size of the variant type. Zero for non-variants
  final int size;

  /// The Type's vTable (a table of virutal methods).
  final Map<String, Pointer<GodotVirtualFunction>> vTable;

  /// Information about this class if it is a Godot "Script". Can be null if this
  /// class is not a script resource
  final ScriptInfo? scriptInfo;

  TypeInfo(
    this.type,
    this.className,
    this.nativeTypeName, {
    this.isGlobalClass = false,
    this.parentType,
    this.variantType = GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_OBJECT,
    this.size = 0,
    this.vTable = const {},
    this.scriptInfo,
  });

  static late Map<Type?, TypeInfo> _typeMapping;
  static void initTypeMappings() {
    _typeMapping = {
      null: TypeInfo(
        Pointer<void>, // Not sure if this is right.
        StringName.fromString('void'),
        StringName(),
        variantType: GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_NIL,
      ),
      bool: TypeInfo(
        bool,
        StringName.fromString('bool'),
        StringName(),
        variantType: GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL,
      ),
      int: TypeInfo(
        int,
        StringName.fromString('int'),
        StringName(),
        variantType: GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT,
      ),
      double: TypeInfo(
        double,
        StringName.fromString('double'),
        StringName(),
        variantType: GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_FLOAT,
      ),
      String: TypeInfo(
        String,
        StringName.fromString('String'),
        StringName(),
        variantType: GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING,
      ),
      Variant: TypeInfo(
        Variant,
        StringName.fromString('Variant'),
        StringName.fromString('Variant'),
        variantType:
            GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VARIANT_MAX,
      ),
    };
  }

  static TypeInfo? forType(Type? type) {
    return _typeMapping[type];
  }
}
