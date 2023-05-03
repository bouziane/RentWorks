// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realty_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RealtyParam _$$_RealtyParamFromJson(Map<String, dynamic> json) =>
    _$_RealtyParam(
      available: json['available'] as bool?,
      price: (json['price'] as num?)?.toDouble(),
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
      location: json['location'] as String?,
      name: json['name'] as String?,
      owner: json['owner'] as String?,
    );

Map<String, dynamic> _$$_RealtyParamToJson(_$_RealtyParam instance) =>
    <String, dynamic>{
      'available': instance.available,
      'price': instance.price,
      'amenities': instance.amenities,
      'photos': instance.photos,
      'description': instance.description,
      'location': instance.location,
      'name': instance.name,
      'owner': instance.owner,
    };
