import 'dart:developer';

import 'package:weather_app/model/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherService {
  Dio dio = Dio();
  String baseURL = 'https://api.weatherbit.io/v2.0/';
  String apiKey = 'e119181809db47fd8cf729ab6d692d6b';
  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      //https://api.weatherbit.io/v2.0/forecast/daily?city=cityName&key=e119181809db47fd8cf729ab6d692d6b
      String url = "${baseURL}forecast/daily?city=$cityName&key=$apiKey";
      Response response = await dio.get(url);
      Map<String, dynamic> jsonData = response.data;
      WeatherModel currentWeather = WeatherModel.fromjason(jsonData);
      return currentWeather;
    } on DioException catch (e) {
      String error_message =
          e.response?.data['error'] ?? "oops, there was an error!";
      throw Exception(error_message);
    } catch (e) {
      log(e.toString());
      throw Exception("oops, there was an error!");
    }
  }
}
