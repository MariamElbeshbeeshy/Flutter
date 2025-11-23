import 'package:dio/dio.dart';

class Api {
  // get method
  Future<Response> get({required String uri}) async {
    Response response = await Dio().get(uri);

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return response;
    } else {
      throw Exception(
        'There was a problem! Status code: ${response.statusCode}',
      );
    }
  }

  // post method
  Future<dynamic> post({
    required String url,
    dynamic data,
    String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    Response response = await Dio().post(
      url,
      data: data,
      options: Options(headers: headers),
    );

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return response;
    } else {
      throw Exception(
        'There was a problem! Status code: ${response.statusCode}',
      );
    }
  }

  // put method
  Future<dynamic> put({
    required String url,
    dynamic data,
    String? token,
  }) async {
    Map<String, String> headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    Response response = await Dio().put(
      url,
      data: data,
      options: Options(headers: headers),
    );

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return response;
    } else {
      throw Exception(
        'There was a problem! Status code: ${response.statusCode}',
      );
    }
  }
}
