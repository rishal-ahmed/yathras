import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yathras/core/constant/urls.dart';
import 'package:yathras/domain/models/hotels/hotels_model.dart';

class HotelsService {
  final Dio dio = Dio(BaseOptions());

  //==================== Validate User ====================
  Future<List<HotelModel>> getHotels() async {
    try {
      final Response response = await dio.get(urlHotels);
      log('response == ${response.data}', name: 'Hotels');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List status = json.decode(response.data);
        final hotels = status.map((json) => HotelModel.fromJson(json)).toList();
        return hotels;
      } else {
        throw SocketException;
      }
    } catch (e) {
      log('Exception : $e');
      rethrow;
    }
  }
}
