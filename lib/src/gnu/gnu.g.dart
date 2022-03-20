// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// GNU C Library
class DynamicGnuCLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  DynamicGnuCLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  DynamicGnuCLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<ffi.Int32> errno() {
    return _errno();
  }

  late final _errnoPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int32> Function()>>(
          '__errno_location');
  late final _errno = _errnoPtr.asFunction<ffi.Pointer<ffi.Int32> Function()>();

  ffi.Pointer<ffi.Int8> strerror(
    int __errnum,
  ) {
    return _strerror(
      __errnum,
    );
  }

  late final _strerrorPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int8> Function(ffi.Int32)>>(
          'strerror');
  late final _strerror =
      _strerrorPtr.asFunction<ffi.Pointer<ffi.Int8> Function(int)>();
}
