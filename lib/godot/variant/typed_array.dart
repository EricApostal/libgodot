import 'dart:ffi';

import '../core/type_info.dart';
import '../generated/builtins.dart';

class TypedArray<T> extends Array {
  TypedArray() : super() {
    //gde.arraySetTyped(this, VariantType.typeObject, T, Variant());
  }
  static TypeInfo get sTypeInfo => Array.sTypeInfo;

  TypedArray.fromVariantPtr(Pointer<Void> ptr) : super.fromVariantPtr(ptr);
  TypedArray.copyPtr(Pointer<Void> ptr) : super.copyPtr(ptr);
}
