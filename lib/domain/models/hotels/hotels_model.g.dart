// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotelModel _$$_HotelModelFromJson(Map<String, dynamic> json) =>
    _$_HotelModel(
      id: json['id'] as String,
      hotelId: json['hotelid'] as String,
      hotelName: json['hotelname'] as String,
      address: json['address'] as String,
      country: json['country'] as String,
      state: json['state'] as String,
      district: json['district'] as String,
      city: json['city'] as String,
      filePath: json['file_path'] as String,
      roomPrice: json['roomprice'] as String,
      discountPrice: json['discountprice'] as String,
    );

Map<String, dynamic> _$$_HotelModelToJson(_$_HotelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotelid': instance.hotelId,
      'hotelname': instance.hotelName,
      'address': instance.address,
      'country': instance.country,
      'state': instance.state,
      'district': instance.district,
      'city': instance.city,
      'file_path': instance.filePath,
      'roomprice': instance.roomPrice,
      'discountprice': instance.discountPrice,
    };
