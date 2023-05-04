// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Realty _$$_RealtyFromJson(Map<String, dynamic> json) => _$_Realty(
      available: json['available'] as bool? ?? false,
      price: (json['price'] as num?)?.toDouble(),
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String,
      description: json['description'] as String?,
      location: json['location'] as String?,
      name: json['name'] as String?,
      owner: json['owner'] as String?,
    );

Map<String, dynamic> _$$_RealtyToJson(_$_Realty instance) => <String, dynamic>{
      'available': instance.available,
      'price': instance.price,
      'amenities': instance.amenities,
      'photos': instance.photos,
      'id': instance.id,
      'description': instance.description,
      'location': instance.location,
      'name': instance.name,
      'owner': instance.owner,
    };
