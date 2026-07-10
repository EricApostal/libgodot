// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFSpecGloss extends Resource {
  GLTFSpecGloss(super.nativePtr);

  static final Pointer<Void> _mb_get_diffuse_img =
      resolveMethodBind('GLTFSpecGloss', 'get_diffuse_img', 564927088);

  Image? getDiffuseImg() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_diffuse_img, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_diffuse_img =
      resolveMethodBind('GLTFSpecGloss', 'set_diffuse_img', 532598488);

  void setDiffuseImg(Image diffuseImg) {
    final arg0 = malloc<Pointer<Void>>()..value = diffuseImg.nativePtr;
    try {
      ptrcallVoid(_mb_set_diffuse_img, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_diffuse_factor =
      resolveMethodBind('GLTFSpecGloss', 'get_diffuse_factor', 3200896285);

  Color getDiffuseFactor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_diffuse_factor, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_diffuse_factor =
      resolveMethodBind('GLTFSpecGloss', 'set_diffuse_factor', 2920490490);

  void setDiffuseFactor(Color diffuseFactor) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    diffuseFactor.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_diffuse_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gloss_factor =
      resolveMethodBind('GLTFSpecGloss', 'get_gloss_factor', 191475506);

  double getGlossFactor() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_gloss_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gloss_factor =
      resolveMethodBind('GLTFSpecGloss', 'set_gloss_factor', 373806689);

  void setGlossFactor(double glossFactor) {
    final arg0 = malloc<Double>()..value = glossFactor;
    try {
      ptrcallVoid(_mb_set_gloss_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_specular_factor =
      resolveMethodBind('GLTFSpecGloss', 'get_specular_factor', 3200896285);

  Color getSpecularFactor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_specular_factor, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_specular_factor =
      resolveMethodBind('GLTFSpecGloss', 'set_specular_factor', 2920490490);

  void setSpecularFactor(Color specularFactor) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    specularFactor.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_specular_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_spec_gloss_img =
      resolveMethodBind('GLTFSpecGloss', 'get_spec_gloss_img', 564927088);

  Image? getSpecGlossImg() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_spec_gloss_img, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_spec_gloss_img =
      resolveMethodBind('GLTFSpecGloss', 'set_spec_gloss_img', 532598488);

  void setSpecGlossImg(Image specGlossImg) {
    final arg0 = malloc<Pointer<Void>>()..value = specGlossImg.nativePtr;
    try {
      ptrcallVoid(_mb_set_spec_gloss_img, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
