// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityModel _$$_CityModelFromJson(Map<String, dynamic> json) => _$_CityModel(
      cityId: json['city_id'],
      stateId: json['state_id'] as String,
      countryId: json['country_id'] as String,
      cityTitle: json['city_title'] as String,
      cityDescription: json['city_description'] as String?,
      isActive: json['isactive'] as String?,
    );

Map<String, dynamic> _$$_CityModelToJson(_$_CityModel instance) =>
    <String, dynamic>{
      'city_id': instance.cityId,
      'state_id': instance.stateId,
      'country_id': instance.countryId,
      'city_title': instance.cityTitle,
      'city_description': instance.cityDescription,
      'isactive': instance.isActive,
    };
