import 'package:bookly/core/constant/strings.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = Strings.kBaseUrl;
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
