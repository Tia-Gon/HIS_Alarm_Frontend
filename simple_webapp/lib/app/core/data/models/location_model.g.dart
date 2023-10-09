// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      road_address_name: json['road_address_name'] as String? ?? '',
      id: json['id'] as String? ?? '',
      place_name: json['place_name'] as String? ?? '',
      x: json['x'] as String? ?? '',
      y: json['y'] as String? ?? '',
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'road_address_name': instance.road_address_name,
      'id': instance.id,
      'place_name': instance.place_name,
      'x': instance.x,
      'y': instance.y,
    };
