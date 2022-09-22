import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yathras/core/constant/urls.dart';
import 'package:yathras/domain/models/cities/cities_model.dart';

class CitiesServies {
  final Dio dio = Dio(BaseOptions());

  //==================== Validate User ====================
  Future<List<CityModel>> getCities() async {
    try {
      final Response response = await dio.get(urlCities);
      log('response == ${response.data}', name: 'Cities');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List status = json.decode(response.data);
        final cities = status.map((json) => CityModel.fromJson(json)).toList();
        return cities;
      } else {
        throw SocketException;
      }
    } catch (e) {
      log('Exception : $e');
      rethrow;
    }
  }
}
