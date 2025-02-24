// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CryptoData _$CryptoDataFromJson(Map<String, dynamic> json) {
  return _CryptoData.fromJson(json);
}

/// @nodoc
mixin _$CryptoData {
  String? get id => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  double? get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap')
  int? get marketCap => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap_rank')
  int? get marketCapRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'high_24h')
  int? get high24h => throw _privateConstructorUsedError;
  @JsonKey(name: 'low_24h')
  int? get low24h => throw _privateConstructorUsedError;
  @JsonKey(name: 'sparkline_in_7d')
  WeeklyPriceData? get weeklyPriceData => throw _privateConstructorUsedError;

  /// Serializes this CryptoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CryptoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoDataCopyWith<CryptoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoDataCopyWith<$Res> {
  factory $CryptoDataCopyWith(
          CryptoData value, $Res Function(CryptoData) then) =
      _$CryptoDataCopyWithImpl<$Res, CryptoData>;
  @useResult
  $Res call(
      {String? id,
      String? symbol,
      String? name,
      String? image,
      @JsonKey(name: 'current_price') double? currentPrice,
      @JsonKey(name: 'market_cap') int? marketCap,
      @JsonKey(name: 'market_cap_rank') int? marketCapRank,
      @JsonKey(name: 'high_24h') int? high24h,
      @JsonKey(name: 'low_24h') int? low24h,
      @JsonKey(name: 'sparkline_in_7d') WeeklyPriceData? weeklyPriceData});

  $WeeklyPriceDataCopyWith<$Res>? get weeklyPriceData;
}

/// @nodoc
class _$CryptoDataCopyWithImpl<$Res, $Val extends CryptoData>
    implements $CryptoDataCopyWith<$Res> {
  _$CryptoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
    Object? marketCap = freezed,
    Object? marketCapRank = freezed,
    Object? high24h = freezed,
    Object? low24h = freezed,
    Object? weeklyPriceData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      marketCap: freezed == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as int?,
      marketCapRank: freezed == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as int?,
      high24h: freezed == high24h
          ? _value.high24h
          : high24h // ignore: cast_nullable_to_non_nullable
              as int?,
      low24h: freezed == low24h
          ? _value.low24h
          : low24h // ignore: cast_nullable_to_non_nullable
              as int?,
      weeklyPriceData: freezed == weeklyPriceData
          ? _value.weeklyPriceData
          : weeklyPriceData // ignore: cast_nullable_to_non_nullable
              as WeeklyPriceData?,
    ) as $Val);
  }

  /// Create a copy of CryptoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeeklyPriceDataCopyWith<$Res>? get weeklyPriceData {
    if (_value.weeklyPriceData == null) {
      return null;
    }

    return $WeeklyPriceDataCopyWith<$Res>(_value.weeklyPriceData!, (value) {
      return _then(_value.copyWith(weeklyPriceData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CryptoDataImplCopyWith<$Res>
    implements $CryptoDataCopyWith<$Res> {
  factory _$$CryptoDataImplCopyWith(
          _$CryptoDataImpl value, $Res Function(_$CryptoDataImpl) then) =
      __$$CryptoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? symbol,
      String? name,
      String? image,
      @JsonKey(name: 'current_price') double? currentPrice,
      @JsonKey(name: 'market_cap') int? marketCap,
      @JsonKey(name: 'market_cap_rank') int? marketCapRank,
      @JsonKey(name: 'high_24h') int? high24h,
      @JsonKey(name: 'low_24h') int? low24h,
      @JsonKey(name: 'sparkline_in_7d') WeeklyPriceData? weeklyPriceData});

  @override
  $WeeklyPriceDataCopyWith<$Res>? get weeklyPriceData;
}

/// @nodoc
class __$$CryptoDataImplCopyWithImpl<$Res>
    extends _$CryptoDataCopyWithImpl<$Res, _$CryptoDataImpl>
    implements _$$CryptoDataImplCopyWith<$Res> {
  __$$CryptoDataImplCopyWithImpl(
      _$CryptoDataImpl _value, $Res Function(_$CryptoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
    Object? marketCap = freezed,
    Object? marketCapRank = freezed,
    Object? high24h = freezed,
    Object? low24h = freezed,
    Object? weeklyPriceData = freezed,
  }) {
    return _then(_$CryptoDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      marketCap: freezed == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as int?,
      marketCapRank: freezed == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as int?,
      high24h: freezed == high24h
          ? _value.high24h
          : high24h // ignore: cast_nullable_to_non_nullable
              as int?,
      low24h: freezed == low24h
          ? _value.low24h
          : low24h // ignore: cast_nullable_to_non_nullable
              as int?,
      weeklyPriceData: freezed == weeklyPriceData
          ? _value.weeklyPriceData
          : weeklyPriceData // ignore: cast_nullable_to_non_nullable
              as WeeklyPriceData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoDataImpl extends _CryptoData {
  _$CryptoDataImpl(
      {this.id,
      this.symbol,
      this.name,
      this.image,
      @JsonKey(name: 'current_price') this.currentPrice,
      @JsonKey(name: 'market_cap') this.marketCap,
      @JsonKey(name: 'market_cap_rank') this.marketCapRank,
      @JsonKey(name: 'high_24h') this.high24h,
      @JsonKey(name: 'low_24h') this.low24h,
      @JsonKey(name: 'sparkline_in_7d') this.weeklyPriceData})
      : super._();

  factory _$CryptoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? symbol;
  @override
  final String? name;
  @override
  final String? image;
  @override
  @JsonKey(name: 'current_price')
  final double? currentPrice;
  @override
  @JsonKey(name: 'market_cap')
  final int? marketCap;
  @override
  @JsonKey(name: 'market_cap_rank')
  final int? marketCapRank;
  @override
  @JsonKey(name: 'high_24h')
  final int? high24h;
  @override
  @JsonKey(name: 'low_24h')
  final int? low24h;
  @override
  @JsonKey(name: 'sparkline_in_7d')
  final WeeklyPriceData? weeklyPriceData;

  @override
  String toString() {
    return 'CryptoData(id: $id, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, marketCap: $marketCap, marketCapRank: $marketCapRank, high24h: $high24h, low24h: $low24h, weeklyPriceData: $weeklyPriceData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.marketCap, marketCap) ||
                other.marketCap == marketCap) &&
            (identical(other.marketCapRank, marketCapRank) ||
                other.marketCapRank == marketCapRank) &&
            (identical(other.high24h, high24h) || other.high24h == high24h) &&
            (identical(other.low24h, low24h) || other.low24h == low24h) &&
            (identical(other.weeklyPriceData, weeklyPriceData) ||
                other.weeklyPriceData == weeklyPriceData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, symbol, name, image,
      currentPrice, marketCap, marketCapRank, high24h, low24h, weeklyPriceData);

  /// Create a copy of CryptoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoDataImplCopyWith<_$CryptoDataImpl> get copyWith =>
      __$$CryptoDataImplCopyWithImpl<_$CryptoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoDataImplToJson(
      this,
    );
  }
}

abstract class _CryptoData extends CryptoData {
  factory _CryptoData(
      {final String? id,
      final String? symbol,
      final String? name,
      final String? image,
      @JsonKey(name: 'current_price') final double? currentPrice,
      @JsonKey(name: 'market_cap') final int? marketCap,
      @JsonKey(name: 'market_cap_rank') final int? marketCapRank,
      @JsonKey(name: 'high_24h') final int? high24h,
      @JsonKey(name: 'low_24h') final int? low24h,
      @JsonKey(name: 'sparkline_in_7d')
      final WeeklyPriceData? weeklyPriceData}) = _$CryptoDataImpl;
  _CryptoData._() : super._();

  factory _CryptoData.fromJson(Map<String, dynamic> json) =
      _$CryptoDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get symbol;
  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(name: 'current_price')
  double? get currentPrice;
  @override
  @JsonKey(name: 'market_cap')
  int? get marketCap;
  @override
  @JsonKey(name: 'market_cap_rank')
  int? get marketCapRank;
  @override
  @JsonKey(name: 'high_24h')
  int? get high24h;
  @override
  @JsonKey(name: 'low_24h')
  int? get low24h;
  @override
  @JsonKey(name: 'sparkline_in_7d')
  WeeklyPriceData? get weeklyPriceData;

  /// Create a copy of CryptoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoDataImplCopyWith<_$CryptoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
