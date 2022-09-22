import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotels_model.freezed.dart';
part 'hotels_model.g.dart';

@freezed
class HotelModel with _$HotelModel {
  const factory HotelModel(
          {@JsonKey(name: 'id') required String id,
          @JsonKey(name: 'hotelid') required String hotelId,
          @JsonKey(name: 'hotelname') required String hotelName,
          @JsonKey(name: 'address') required String address,
          @JsonKey(name: 'country') required String country,
          @JsonKey(name: 'state') required String state,
          @JsonKey(name: 'district') required String district,
          @JsonKey(name: 'city') required String city,
          @JsonKey(name: 'file_path') required String filePath,
          @JsonKey(name: 'roomprice') required String roomPrice,
          @JsonKey(name: 'discountprice') required String discountPrice}) =
      _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}
