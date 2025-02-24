// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_price_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyPriceData _$WeeklyPriceDataFromJson(Map<String, dynamic> json) {
  return _WeeklyPriceData.fromJson(json);
}

/// @nodoc
mixin _$WeeklyPriceData {
  List<double>? get price => throw _privateConstructorUsedError;

  /// Serializes this WeeklyPriceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyPriceDataCopyWith<WeeklyPriceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyPriceDataCopyWith<$Res> {
  factory $WeeklyPriceDataCopyWith(
          WeeklyPriceData value, $Res Function(WeeklyPriceData) then) =
      _$WeeklyPriceDataCopyWithImpl<$Res, WeeklyPriceData>;
  @useResult
  $Res call({List<double>? price});
}

/// @nodoc
class _$WeeklyPriceDataCopyWithImpl<$Res, $Val extends WeeklyPriceData>
    implements $WeeklyPriceDataCopyWith<$Res> {
  _$WeeklyPriceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyPriceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyPriceDataImplCopyWith<$Res>
    implements $WeeklyPriceDataCopyWith<$Res> {
  factory _$$WeeklyPriceDataImplCopyWith(_$WeeklyPriceDataImpl value,
          $Res Function(_$WeeklyPriceDataImpl) then) =
      __$$WeeklyPriceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<double>? price});
}

/// @nodoc
class __$$WeeklyPriceDataImplCopyWithImpl<$Res>
    extends _$WeeklyPriceDataCopyWithImpl<$Res, _$WeeklyPriceDataImpl>
    implements _$$WeeklyPriceDataImplCopyWith<$Res> {
  __$$WeeklyPriceDataImplCopyWithImpl(
      _$WeeklyPriceDataImpl _value, $Res Function(_$WeeklyPriceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyPriceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_$WeeklyPriceDataImpl(
      price: freezed == price
          ? _value._price
          : price // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyPriceDataImpl implements _WeeklyPriceData {
  _$WeeklyPriceDataImpl({final List<double>? price}) : _price = price;

  factory _$WeeklyPriceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyPriceDataImplFromJson(json);

  final List<double>? _price;
  @override
  List<double>? get price {
    final value = _price;
    if (value == null) return null;
    if (_price is EqualUnmodifiableListView) return _price;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeeklyPriceData(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyPriceDataImpl &&
            const DeepCollectionEquality().equals(other._price, _price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_price));

  /// Create a copy of WeeklyPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyPriceDataImplCopyWith<_$WeeklyPriceDataImpl> get copyWith =>
      __$$WeeklyPriceDataImplCopyWithImpl<_$WeeklyPriceDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyPriceDataImplToJson(
      this,
    );
  }
}

abstract class _WeeklyPriceData implements WeeklyPriceData {
  factory _WeeklyPriceData({final List<double>? price}) = _$WeeklyPriceDataImpl;

  factory _WeeklyPriceData.fromJson(Map<String, dynamic> json) =
      _$WeeklyPriceDataImpl.fromJson;

  @override
  List<double>? get price;

  /// Create a copy of WeeklyPriceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyPriceDataImplCopyWith<_$WeeklyPriceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
