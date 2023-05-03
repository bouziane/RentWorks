// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'realty_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RealtyParam _$RealtyParamFromJson(Map<String, dynamic> json) {
  return _RealtyParam.fromJson(json);
}

/// @nodoc
mixin _$RealtyParam {
  bool? get available => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  List<String>? get amenities => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RealtyParamCopyWith<RealtyParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealtyParamCopyWith<$Res> {
  factory $RealtyParamCopyWith(
          RealtyParam value, $Res Function(RealtyParam) then) =
      _$RealtyParamCopyWithImpl<$Res, RealtyParam>;
  @useResult
  $Res call(
      {bool? available,
      double? price,
      List<String>? amenities,
      List<String>? photos,
      String? description,
      String? location,
      String? name,
      String? owner});
}

/// @nodoc
class _$RealtyParamCopyWithImpl<$Res, $Val extends RealtyParam>
    implements $RealtyParamCopyWith<$Res> {
  _$RealtyParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? price = freezed,
    Object? amenities = freezed,
    Object? photos = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RealtyParamCopyWith<$Res>
    implements $RealtyParamCopyWith<$Res> {
  factory _$$_RealtyParamCopyWith(
          _$_RealtyParam value, $Res Function(_$_RealtyParam) then) =
      __$$_RealtyParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? available,
      double? price,
      List<String>? amenities,
      List<String>? photos,
      String? description,
      String? location,
      String? name,
      String? owner});
}

/// @nodoc
class __$$_RealtyParamCopyWithImpl<$Res>
    extends _$RealtyParamCopyWithImpl<$Res, _$_RealtyParam>
    implements _$$_RealtyParamCopyWith<$Res> {
  __$$_RealtyParamCopyWithImpl(
      _$_RealtyParam _value, $Res Function(_$_RealtyParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? price = freezed,
    Object? amenities = freezed,
    Object? photos = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? owner = freezed,
  }) {
    return _then(_$_RealtyParam(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      amenities: freezed == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RealtyParam implements _RealtyParam {
  const _$_RealtyParam(
      {this.available,
      this.price,
      final List<String>? amenities,
      final List<String>? photos,
      this.description,
      this.location,
      this.name,
      this.owner})
      : _amenities = amenities,
        _photos = photos;

  factory _$_RealtyParam.fromJson(Map<String, dynamic> json) =>
      _$$_RealtyParamFromJson(json);

  @override
  final bool? available;
  @override
  final double? price;
  final List<String>? _amenities;
  @override
  List<String>? get amenities {
    final value = _amenities;
    if (value == null) return null;
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _photos;
  @override
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final String? location;
  @override
  final String? name;
  @override
  final String? owner;

  @override
  String toString() {
    return 'RealtyParam(available: $available, price: $price, amenities: $amenities, photos: $photos, description: $description, location: $location, name: $name, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RealtyParam &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      available,
      price,
      const DeepCollectionEquality().hash(_amenities),
      const DeepCollectionEquality().hash(_photos),
      description,
      location,
      name,
      owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RealtyParamCopyWith<_$_RealtyParam> get copyWith =>
      __$$_RealtyParamCopyWithImpl<_$_RealtyParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RealtyParamToJson(
      this,
    );
  }
}

abstract class _RealtyParam implements RealtyParam {
  const factory _RealtyParam(
      {final bool? available,
      final double? price,
      final List<String>? amenities,
      final List<String>? photos,
      final String? description,
      final String? location,
      final String? name,
      final String? owner}) = _$_RealtyParam;

  factory _RealtyParam.fromJson(Map<String, dynamic> json) =
      _$_RealtyParam.fromJson;

  @override
  bool? get available;
  @override
  double? get price;
  @override
  List<String>? get amenities;
  @override
  List<String>? get photos;
  @override
  String? get description;
  @override
  String? get location;
  @override
  String? get name;
  @override
  String? get owner;
  @override
  @JsonKey(ignore: true)
  _$$_RealtyParamCopyWith<_$_RealtyParam> get copyWith =>
      throw _privateConstructorUsedError;
}
