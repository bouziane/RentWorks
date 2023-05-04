// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'realty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Realty _$RealtyFromJson(Map<String, dynamic> json) {
  return _Realty.fromJson(json);
}

/// @nodoc
mixin _$Realty {
  bool get available => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  List<String>? get amenities => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RealtyCopyWith<Realty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealtyCopyWith<$Res> {
  factory $RealtyCopyWith(Realty value, $Res Function(Realty) then) =
      _$RealtyCopyWithImpl<$Res, Realty>;
  @useResult
  $Res call(
      {bool available,
      double? price,
      List<String>? amenities,
      List<String>? photos,
      String id,
      String? description,
      String? location,
      String? name,
      String? owner});
}

/// @nodoc
class _$RealtyCopyWithImpl<$Res, $Val extends Realty>
    implements $RealtyCopyWith<$Res> {
  _$RealtyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? price = freezed,
    Object? amenities = freezed,
    Object? photos = freezed,
    Object? id = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_RealtyCopyWith<$Res> implements $RealtyCopyWith<$Res> {
  factory _$$_RealtyCopyWith(_$_Realty value, $Res Function(_$_Realty) then) =
      __$$_RealtyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool available,
      double? price,
      List<String>? amenities,
      List<String>? photos,
      String id,
      String? description,
      String? location,
      String? name,
      String? owner});
}

/// @nodoc
class __$$_RealtyCopyWithImpl<$Res>
    extends _$RealtyCopyWithImpl<$Res, _$_Realty>
    implements _$$_RealtyCopyWith<$Res> {
  __$$_RealtyCopyWithImpl(_$_Realty _value, $Res Function(_$_Realty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? price = freezed,
    Object? amenities = freezed,
    Object? photos = freezed,
    Object? id = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? owner = freezed,
  }) {
    return _then(_$_Realty(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_Realty implements _Realty {
  const _$_Realty(
      {this.available = false,
      this.price,
      final List<String>? amenities,
      final List<String>? photos,
      required this.id,
      this.description,
      this.location,
      this.name,
      this.owner})
      : _amenities = amenities,
        _photos = photos;

  factory _$_Realty.fromJson(Map<String, dynamic> json) =>
      _$$_RealtyFromJson(json);

  @override
  @JsonKey()
  final bool available;
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
  final String id;
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
    return 'Realty(available: $available, price: $price, amenities: $amenities, photos: $photos, id: $id, description: $description, location: $location, name: $name, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Realty &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.id, id) || other.id == id) &&
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
      id,
      description,
      location,
      name,
      owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RealtyCopyWith<_$_Realty> get copyWith =>
      __$$_RealtyCopyWithImpl<_$_Realty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RealtyToJson(
      this,
    );
  }
}

abstract class _Realty implements Realty {
  const factory _Realty(
      {final bool available,
      final double? price,
      final List<String>? amenities,
      final List<String>? photos,
      required final String id,
      final String? description,
      final String? location,
      final String? name,
      final String? owner}) = _$_Realty;

  factory _Realty.fromJson(Map<String, dynamic> json) = _$_Realty.fromJson;

  @override
  bool get available;
  @override
  double? get price;
  @override
  List<String>? get amenities;
  @override
  List<String>? get photos;
  @override
  String get id;
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
  _$$_RealtyCopyWith<_$_Realty> get copyWith =>
      throw _privateConstructorUsedError;
}
