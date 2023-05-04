// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tenant _$$_TenantFromJson(Map<String, dynamic> json) => _$_Tenant(
      active: json['active'] as bool? ?? false,
      id: json['id'] as String,
      email: json['email'] as String?,
      name: json['name'] as String?,
      occupation: json['occupation'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$_TenantToJson(_$_Tenant instance) => <String, dynamic>{
      'active': instance.active,
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'occupation': instance.occupation,
      'phoneNumber': instance.phoneNumber,
    };
