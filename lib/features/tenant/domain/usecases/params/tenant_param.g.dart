// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TenantParam _$$_TenantParamFromJson(Map<String, dynamic> json) =>
    _$_TenantParam(
      name: json['name'] as String?,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      active: json['active'] as bool? ?? false,
      occupation: json['occupation'] as String?,
    );

Map<String, dynamic> _$$_TenantParamToJson(_$_TenantParam instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'active': instance.active,
      'occupation': instance.occupation,
    };
