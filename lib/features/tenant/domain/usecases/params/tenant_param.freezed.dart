// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tenant_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TenantParam _$TenantParamFromJson(Map<String, dynamic> json) {
  return _TenantParam.fromJson(json);
}

/// @nodoc
mixin _$TenantParam {
  String? get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String? get occupation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantParamCopyWith<TenantParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantParamCopyWith<$Res> {
  factory $TenantParamCopyWith(
          TenantParam value, $Res Function(TenantParam) then) =
      _$TenantParamCopyWithImpl<$Res, TenantParam>;
  @useResult
  $Res call(
      {String? name,
      String email,
      String? phoneNumber,
      bool active,
      String? occupation});
}

/// @nodoc
class _$TenantParamCopyWithImpl<$Res, $Val extends TenantParam>
    implements $TenantParamCopyWith<$Res> {
  _$TenantParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? active = null,
    Object? occupation = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TenantParamCopyWith<$Res>
    implements $TenantParamCopyWith<$Res> {
  factory _$$_TenantParamCopyWith(
          _$_TenantParam value, $Res Function(_$_TenantParam) then) =
      __$$_TenantParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String email,
      String? phoneNumber,
      bool active,
      String? occupation});
}

/// @nodoc
class __$$_TenantParamCopyWithImpl<$Res>
    extends _$TenantParamCopyWithImpl<$Res, _$_TenantParam>
    implements _$$_TenantParamCopyWith<$Res> {
  __$$_TenantParamCopyWithImpl(
      _$_TenantParam _value, $Res Function(_$_TenantParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? active = null,
    Object? occupation = freezed,
  }) {
    return _then(_$_TenantParam(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TenantParam implements _TenantParam {
  const _$_TenantParam(
      {this.name,
      required this.email,
      this.phoneNumber,
      this.active = false,
      this.occupation});

  factory _$_TenantParam.fromJson(Map<String, dynamic> json) =>
      _$$_TenantParamFromJson(json);

  @override
  final String? name;
  @override
  final String email;
  @override
  final String? phoneNumber;
  @override
  @JsonKey()
  final bool active;
  @override
  final String? occupation;

  @override
  String toString() {
    return 'TenantParam(name: $name, email: $email, phoneNumber: $phoneNumber, active: $active, occupation: $occupation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TenantParam &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, phoneNumber, active, occupation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TenantParamCopyWith<_$_TenantParam> get copyWith =>
      __$$_TenantParamCopyWithImpl<_$_TenantParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TenantParamToJson(
      this,
    );
  }
}

abstract class _TenantParam implements TenantParam {
  const factory _TenantParam(
      {final String? name,
      required final String email,
      final String? phoneNumber,
      final bool active,
      final String? occupation}) = _$_TenantParam;

  factory _TenantParam.fromJson(Map<String, dynamic> json) =
      _$_TenantParam.fromJson;

  @override
  String? get name;
  @override
  String get email;
  @override
  String? get phoneNumber;
  @override
  bool get active;
  @override
  String? get occupation;
  @override
  @JsonKey(ignore: true)
  _$$_TenantParamCopyWith<_$_TenantParam> get copyWith =>
      throw _privateConstructorUsedError;
}
