// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CryptoPrice _$CryptoPriceFromJson(Map<String, dynamic> json) {
  return _CryptoPrice.fromJson(json);
}

/// @nodoc
mixin _$CryptoPrice {
  List<List<double>> get prices => throw _privateConstructorUsedError;
  List<List<double>> get market_caps => throw _privateConstructorUsedError;
  List<List<double>> get total_volumes => throw _privateConstructorUsedError;

  /// Serializes this CryptoPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CryptoPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoPriceCopyWith<CryptoPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoPriceCopyWith<$Res> {
  factory $CryptoPriceCopyWith(
          CryptoPrice value, $Res Function(CryptoPrice) then) =
      _$CryptoPriceCopyWithImpl<$Res, CryptoPrice>;
  @useResult
  $Res call(
      {List<List<double>> prices,
      List<List<double>> market_caps,
      List<List<double>> total_volumes});
}

/// @nodoc
class _$CryptoPriceCopyWithImpl<$Res, $Val extends CryptoPrice>
    implements $CryptoPriceCopyWith<$Res> {
  _$CryptoPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
    Object? market_caps = null,
    Object? total_volumes = null,
  }) {
    return _then(_value.copyWith(
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      market_caps: null == market_caps
          ? _value.market_caps
          : market_caps // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      total_volumes: null == total_volumes
          ? _value.total_volumes
          : total_volumes // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoPriceImplCopyWith<$Res>
    implements $CryptoPriceCopyWith<$Res> {
  factory _$$CryptoPriceImplCopyWith(
          _$CryptoPriceImpl value, $Res Function(_$CryptoPriceImpl) then) =
      __$$CryptoPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<double>> prices,
      List<List<double>> market_caps,
      List<List<double>> total_volumes});
}

/// @nodoc
class __$$CryptoPriceImplCopyWithImpl<$Res>
    extends _$CryptoPriceCopyWithImpl<$Res, _$CryptoPriceImpl>
    implements _$$CryptoPriceImplCopyWith<$Res> {
  __$$CryptoPriceImplCopyWithImpl(
      _$CryptoPriceImpl _value, $Res Function(_$CryptoPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
    Object? market_caps = null,
    Object? total_volumes = null,
  }) {
    return _then(_$CryptoPriceImpl(
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      market_caps: null == market_caps
          ? _value._market_caps
          : market_caps // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      total_volumes: null == total_volumes
          ? _value._total_volumes
          : total_volumes // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoPriceImpl implements _CryptoPrice {
  _$CryptoPriceImpl(
      {required final List<List<double>> prices,
      required final List<List<double>> market_caps,
      required final List<List<double>> total_volumes})
      : _prices = prices,
        _market_caps = market_caps,
        _total_volumes = total_volumes;

  factory _$CryptoPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoPriceImplFromJson(json);

  final List<List<double>> _prices;
  @override
  List<List<double>> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  final List<List<double>> _market_caps;
  @override
  List<List<double>> get market_caps {
    if (_market_caps is EqualUnmodifiableListView) return _market_caps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_market_caps);
  }

  final List<List<double>> _total_volumes;
  @override
  List<List<double>> get total_volumes {
    if (_total_volumes is EqualUnmodifiableListView) return _total_volumes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_total_volumes);
  }

  @override
  String toString() {
    return 'CryptoPrice(prices: $prices, market_caps: $market_caps, total_volumes: $total_volumes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoPriceImpl &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            const DeepCollectionEquality()
                .equals(other._market_caps, _market_caps) &&
            const DeepCollectionEquality()
                .equals(other._total_volumes, _total_volumes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_prices),
      const DeepCollectionEquality().hash(_market_caps),
      const DeepCollectionEquality().hash(_total_volumes));

  /// Create a copy of CryptoPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoPriceImplCopyWith<_$CryptoPriceImpl> get copyWith =>
      __$$CryptoPriceImplCopyWithImpl<_$CryptoPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoPriceImplToJson(
      this,
    );
  }
}

abstract class _CryptoPrice implements CryptoPrice {
  factory _CryptoPrice(
      {required final List<List<double>> prices,
      required final List<List<double>> market_caps,
      required final List<List<double>> total_volumes}) = _$CryptoPriceImpl;

  factory _CryptoPrice.fromJson(Map<String, dynamic> json) =
      _$CryptoPriceImpl.fromJson;

  @override
  List<List<double>> get prices;
  @override
  List<List<double>> get market_caps;
  @override
  List<List<double>> get total_volumes;

  /// Create a copy of CryptoPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoPriceImplCopyWith<_$CryptoPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
