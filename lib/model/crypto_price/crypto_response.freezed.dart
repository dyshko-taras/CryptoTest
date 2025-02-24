// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CryptoResponse _$CryptoResponseFromJson(Map<String, dynamic> json) {
  return _CryptoResponse.fromJson(json);
}

/// @nodoc
mixin _$CryptoResponse {
  List<List<dynamic>> get prices => throw _privateConstructorUsedError;

  /// Serializes this CryptoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CryptoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoResponseCopyWith<CryptoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoResponseCopyWith<$Res> {
  factory $CryptoResponseCopyWith(
          CryptoResponse value, $Res Function(CryptoResponse) then) =
      _$CryptoResponseCopyWithImpl<$Res, CryptoResponse>;
  @useResult
  $Res call({List<List<dynamic>> prices});
}

/// @nodoc
class _$CryptoResponseCopyWithImpl<$Res, $Val extends CryptoResponse>
    implements $CryptoResponseCopyWith<$Res> {
  _$CryptoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
  }) {
    return _then(_value.copyWith(
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoResponseImplCopyWith<$Res>
    implements $CryptoResponseCopyWith<$Res> {
  factory _$$CryptoResponseImplCopyWith(_$CryptoResponseImpl value,
          $Res Function(_$CryptoResponseImpl) then) =
      __$$CryptoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<dynamic>> prices});
}

/// @nodoc
class __$$CryptoResponseImplCopyWithImpl<$Res>
    extends _$CryptoResponseCopyWithImpl<$Res, _$CryptoResponseImpl>
    implements _$$CryptoResponseImplCopyWith<$Res> {
  __$$CryptoResponseImplCopyWithImpl(
      _$CryptoResponseImpl _value, $Res Function(_$CryptoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
  }) {
    return _then(_$CryptoResponseImpl(
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoResponseImpl implements _CryptoResponse {
  _$CryptoResponseImpl({required final List<List<dynamic>> prices})
      : _prices = prices;

  factory _$CryptoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoResponseImplFromJson(json);

  final List<List<dynamic>> _prices;
  @override
  List<List<dynamic>> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  String toString() {
    return 'CryptoResponse(prices: $prices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoResponseImpl &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prices));

  /// Create a copy of CryptoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoResponseImplCopyWith<_$CryptoResponseImpl> get copyWith =>
      __$$CryptoResponseImplCopyWithImpl<_$CryptoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoResponseImplToJson(
      this,
    );
  }
}

abstract class _CryptoResponse implements CryptoResponse {
  factory _CryptoResponse({required final List<List<dynamic>> prices}) =
      _$CryptoResponseImpl;

  factory _CryptoResponse.fromJson(Map<String, dynamic> json) =
      _$CryptoResponseImpl.fromJson;

  @override
  List<List<dynamic>> get prices;

  /// Create a copy of CryptoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoResponseImplCopyWith<_$CryptoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
