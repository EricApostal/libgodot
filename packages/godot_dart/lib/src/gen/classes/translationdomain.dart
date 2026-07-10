// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TranslationDomain extends RefCounted {
  TranslationDomain(super.nativePtr);

  /// Constructs a brand-new engine-owned TranslationDomain instance
  /// (via classdb_construct_object3), not an existing one.
  factory TranslationDomain.create() {
    return TranslationDomain(resolveClassConstructor('TranslationDomain'));
  }

  static final Pointer<Void> _mb_get_translation_object =
      resolveMethodBind('TranslationDomain', 'get_translation_object', 606768082);

  Translation? getTranslationObject(String locale) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), locale);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_translation_object, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Translation(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_translation =
      resolveMethodBind('TranslationDomain', 'add_translation', 1466479800);

  void addTranslation(Translation translation) {
    final arg0 = malloc<Pointer<Void>>()..value = translation.nativePtr;
    try {
      ptrcallVoid(_mb_add_translation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_translation =
      resolveMethodBind('TranslationDomain', 'remove_translation', 1466479800);

  void removeTranslation(Translation translation) {
    final arg0 = malloc<Pointer<Void>>()..value = translation.nativePtr;
    try {
      ptrcallVoid(_mb_remove_translation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('TranslationDomain', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_translations(): unsupported return type "typedarray::Translation".
  static final Pointer<Void> _mb_has_translation_for_locale =
      resolveMethodBind('TranslationDomain', 'has_translation_for_locale', 2034713381);

  bool hasTranslationForLocale(String locale, bool exact) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), locale);
    final arg1 = malloc<Uint8>()..value = exact ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_translation_for_locale, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_translation =
      resolveMethodBind('TranslationDomain', 'has_translation', 2696976312);

  bool hasTranslation(Translation translation) {
    final arg0 = malloc<Pointer<Void>>()..value = translation.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_translation, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped find_translations(): unsupported return type "typedarray::Translation".
  static final Pointer<Void> _mb_translate =
      resolveMethodBind('TranslationDomain', 'translate', 1829228469);

  String translate(String message, String context) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), message);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), context);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_translate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_translate_plural =
      resolveMethodBind('TranslationDomain', 'translate_plural', 229954002);

  String translatePlural(String message, String messagePlural, int n, String context) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), message);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), messagePlural);
    final arg2 = malloc<Int64>()..value = n;
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg3.cast(), context);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_translate_plural, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
      BuiltinMarshal.destroyStringName(arg3.cast());
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_locale_override =
      resolveMethodBind('TranslationDomain', 'get_locale_override', 201670096);

  String getLocaleOverride() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_locale_override, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_locale_override =
      resolveMethodBind('TranslationDomain', 'set_locale_override', 83702148);

  void setLocaleOverride(String locale) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), locale);
    try {
      ptrcallVoid(_mb_set_locale_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_enabled =
      resolveMethodBind('TranslationDomain', 'is_enabled', 36873697);

  bool isEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('TranslationDomain', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_pseudolocalization_enabled =
      resolveMethodBind('TranslationDomain', 'is_pseudolocalization_enabled', 36873697);

  bool isPseudolocalizationEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_pseudolocalization_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pseudolocalization_enabled =
      resolveMethodBind('TranslationDomain', 'set_pseudolocalization_enabled', 2586408642);

  void setPseudolocalizationEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pseudolocalization_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_pseudolocalization_accents_enabled =
      resolveMethodBind('TranslationDomain', 'is_pseudolocalization_accents_enabled', 36873697);

  bool isPseudolocalizationAccentsEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_pseudolocalization_accents_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pseudolocalization_accents_enabled =
      resolveMethodBind('TranslationDomain', 'set_pseudolocalization_accents_enabled', 2586408642);

  void setPseudolocalizationAccentsEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pseudolocalization_accents_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_pseudolocalization_double_vowels_enabled =
      resolveMethodBind('TranslationDomain', 'is_pseudolocalization_double_vowels_enabled', 36873697);

  bool isPseudolocalizationDoubleVowelsEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_pseudolocalization_double_vowels_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pseudolocalization_double_vowels_enabled =
      resolveMethodBind('TranslationDomain', 'set_pseudolocalization_double_vowels_enabled', 2586408642);

  void setPseudolocalizationDoubleVowelsEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pseudolocalization_double_vowels_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_pseudolocalization_fake_bidi_enabled =
      resolveMethodBind('TranslationDomain', 'is_pseudolocalization_fake_bidi_enabled', 36873697);

  bool isPseudolocalizationFakeBidiEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_pseudolocalization_fake_bidi_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pseudolocalization_fake_bidi_enabled =
      resolveMethodBind('TranslationDomain', 'set_pseudolocalization_fake_bidi_enabled', 2586408642);

  void setPseudolocalizationFakeBidiEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pseudolocalization_fake_bidi_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_pseudolocalization_override_enabled =
      resolveMethodBind('TranslationDomain', 'is_pseudolocalization_override_enabled', 36873697);

  bool isPseudolocalizationOverrideEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_pseudolocalization_override_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pseudolocalization_override_enabled =
      resolveMethodBind('TranslationDomain', 'set_pseudolocalization_override_enabled', 2586408642);

  void setPseudolocalizationOverrideEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pseudolocalization_override_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_pseudolocalization_skip_placeholders_enabled =
      resolveMethodBind('TranslationDomain', 'is_pseudolocalization_skip_placeholders_enabled', 36873697);

  bool isPseudolocalizationSkipPlaceholdersEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_pseudolocalization_skip_placeholders_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pseudolocalization_skip_placeholders_enabled =
      resolveMethodBind('TranslationDomain', 'set_pseudolocalization_skip_placeholders_enabled', 2586408642);

  void setPseudolocalizationSkipPlaceholdersEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pseudolocalization_skip_placeholders_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pseudolocalization_expansion_ratio =
      resolveMethodBind('TranslationDomain', 'get_pseudolocalization_expansion_ratio', 1740695150);

  double getPseudolocalizationExpansionRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pseudolocalization_expansion_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pseudolocalization_expansion_ratio =
      resolveMethodBind('TranslationDomain', 'set_pseudolocalization_expansion_ratio', 373806689);

  void setPseudolocalizationExpansionRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_pseudolocalization_expansion_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pseudolocalization_prefix =
      resolveMethodBind('TranslationDomain', 'get_pseudolocalization_prefix', 201670096);

  String getPseudolocalizationPrefix() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_pseudolocalization_prefix, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pseudolocalization_prefix =
      resolveMethodBind('TranslationDomain', 'set_pseudolocalization_prefix', 83702148);

  void setPseudolocalizationPrefix(String prefix) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), prefix);
    try {
      ptrcallVoid(_mb_set_pseudolocalization_prefix, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pseudolocalization_suffix =
      resolveMethodBind('TranslationDomain', 'get_pseudolocalization_suffix', 201670096);

  String getPseudolocalizationSuffix() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_pseudolocalization_suffix, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pseudolocalization_suffix =
      resolveMethodBind('TranslationDomain', 'set_pseudolocalization_suffix', 83702148);

  void setPseudolocalizationSuffix(String suffix) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), suffix);
    try {
      ptrcallVoid(_mb_set_pseudolocalization_suffix, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_pseudolocalize =
      resolveMethodBind('TranslationDomain', 'pseudolocalize', 1965194235);

  String pseudolocalize(String message) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), message);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_pseudolocalize, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

}
