import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_model.freezed.dart';
part 'cities_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    @JsonKey(name: 'city_id') required dynamic cityId,
    @JsonKey(name: 'state_id') required String stateId,
    @JsonKey(name: 'country_id') required String countryId,
    @JsonKey(name: 'city_title') required String cityTitle,
    @JsonKey(name: 'city_description') required String? cityDescription,
    @JsonKey(name: 'isactive') required String? isActive,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
