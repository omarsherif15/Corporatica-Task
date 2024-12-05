// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCartloading,
    required TResult Function(dynamic data) getCartSuccess,
    required TResult Function(String error) getCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCartloading,
    TResult? Function(dynamic data)? getCartSuccess,
    TResult? Function(String error)? getCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCartloading,
    TResult Function(dynamic data)? getCartSuccess,
    TResult Function(String error)? getCartError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCartLoading value) getCartloading,
    required TResult Function(GetCartSuccess value) getCartSuccess,
    required TResult Function(GetCartError value) getCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCartLoading value)? getCartloading,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
    TResult? Function(GetCartError value)? getCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCartLoading value)? getCartloading,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    TResult Function(GetCartError value)? getCartError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCartloading,
    required TResult Function(dynamic data) getCartSuccess,
    required TResult Function(String error) getCartError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCartloading,
    TResult? Function(dynamic data)? getCartSuccess,
    TResult? Function(String error)? getCartError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCartloading,
    TResult Function(dynamic data)? getCartSuccess,
    TResult Function(String error)? getCartError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCartLoading value) getCartloading,
    required TResult Function(GetCartSuccess value) getCartSuccess,
    required TResult Function(GetCartError value) getCartError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCartLoading value)? getCartloading,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
    TResult? Function(GetCartError value)? getCartError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCartLoading value)? getCartloading,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    TResult Function(GetCartError value)? getCartError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetCartLoadingImplCopyWith<$Res> {
  factory _$$GetCartLoadingImplCopyWith(_$GetCartLoadingImpl value,
          $Res Function(_$GetCartLoadingImpl) then) =
      __$$GetCartLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartLoadingImpl>
    implements _$$GetCartLoadingImplCopyWith<$Res> {
  __$$GetCartLoadingImplCopyWithImpl(
      _$GetCartLoadingImpl _value, $Res Function(_$GetCartLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCartLoadingImpl implements GetCartLoading {
  const _$GetCartLoadingImpl();

  @override
  String toString() {
    return 'CartState.getCartloading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCartloading,
    required TResult Function(dynamic data) getCartSuccess,
    required TResult Function(String error) getCartError,
  }) {
    return getCartloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCartloading,
    TResult? Function(dynamic data)? getCartSuccess,
    TResult? Function(String error)? getCartError,
  }) {
    return getCartloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCartloading,
    TResult Function(dynamic data)? getCartSuccess,
    TResult Function(String error)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartloading != null) {
      return getCartloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCartLoading value) getCartloading,
    required TResult Function(GetCartSuccess value) getCartSuccess,
    required TResult Function(GetCartError value) getCartError,
  }) {
    return getCartloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCartLoading value)? getCartloading,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
    TResult? Function(GetCartError value)? getCartError,
  }) {
    return getCartloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCartLoading value)? getCartloading,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    TResult Function(GetCartError value)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartloading != null) {
      return getCartloading(this);
    }
    return orElse();
  }
}

abstract class GetCartLoading implements CartState {
  const factory GetCartLoading() = _$GetCartLoadingImpl;
}

/// @nodoc
abstract class _$$GetCartSuccessImplCopyWith<$Res> {
  factory _$$GetCartSuccessImplCopyWith(_$GetCartSuccessImpl value,
          $Res Function(_$GetCartSuccessImpl) then) =
      __$$GetCartSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$GetCartSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartSuccessImpl>
    implements _$$GetCartSuccessImplCopyWith<$Res> {
  __$$GetCartSuccessImplCopyWithImpl(
      _$GetCartSuccessImpl _value, $Res Function(_$GetCartSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCartSuccessImpl(
      freezed == data ? _value.data! : data,
    ));
  }
}

/// @nodoc

class _$GetCartSuccessImpl implements GetCartSuccess {
  const _$GetCartSuccessImpl(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'CartState.getCartSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartSuccessImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartSuccessImplCopyWith<_$GetCartSuccessImpl> get copyWith =>
      __$$GetCartSuccessImplCopyWithImpl<_$GetCartSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCartloading,
    required TResult Function(dynamic data) getCartSuccess,
    required TResult Function(String error) getCartError,
  }) {
    return getCartSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCartloading,
    TResult? Function(dynamic data)? getCartSuccess,
    TResult? Function(String error)? getCartError,
  }) {
    return getCartSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCartloading,
    TResult Function(dynamic data)? getCartSuccess,
    TResult Function(String error)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartSuccess != null) {
      return getCartSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCartLoading value) getCartloading,
    required TResult Function(GetCartSuccess value) getCartSuccess,
    required TResult Function(GetCartError value) getCartError,
  }) {
    return getCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCartLoading value)? getCartloading,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
    TResult? Function(GetCartError value)? getCartError,
  }) {
    return getCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCartLoading value)? getCartloading,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    TResult Function(GetCartError value)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartSuccess != null) {
      return getCartSuccess(this);
    }
    return orElse();
  }
}

abstract class GetCartSuccess implements CartState {
  const factory GetCartSuccess(final dynamic data) = _$GetCartSuccessImpl;

  dynamic get data;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCartSuccessImplCopyWith<_$GetCartSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCartErrorImplCopyWith<$Res> {
  factory _$$GetCartErrorImplCopyWith(
          _$GetCartErrorImpl value, $Res Function(_$GetCartErrorImpl) then) =
      __$$GetCartErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetCartErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartErrorImpl>
    implements _$$GetCartErrorImplCopyWith<$Res> {
  __$$GetCartErrorImplCopyWithImpl(
      _$GetCartErrorImpl _value, $Res Function(_$GetCartErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetCartErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCartErrorImpl implements GetCartError {
  const _$GetCartErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CartState.getCartError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartErrorImplCopyWith<_$GetCartErrorImpl> get copyWith =>
      __$$GetCartErrorImplCopyWithImpl<_$GetCartErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCartloading,
    required TResult Function(dynamic data) getCartSuccess,
    required TResult Function(String error) getCartError,
  }) {
    return getCartError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCartloading,
    TResult? Function(dynamic data)? getCartSuccess,
    TResult? Function(String error)? getCartError,
  }) {
    return getCartError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCartloading,
    TResult Function(dynamic data)? getCartSuccess,
    TResult Function(String error)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartError != null) {
      return getCartError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCartLoading value) getCartloading,
    required TResult Function(GetCartSuccess value) getCartSuccess,
    required TResult Function(GetCartError value) getCartError,
  }) {
    return getCartError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCartLoading value)? getCartloading,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
    TResult? Function(GetCartError value)? getCartError,
  }) {
    return getCartError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCartLoading value)? getCartloading,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    TResult Function(GetCartError value)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartError != null) {
      return getCartError(this);
    }
    return orElse();
  }
}

abstract class GetCartError implements CartState {
  const factory GetCartError({required final String error}) =
      _$GetCartErrorImpl;

  String get error;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCartErrorImplCopyWith<_$GetCartErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
