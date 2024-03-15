import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://api.stripe.com/v1/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }

  Future<Response> post(
      {required String endPoint,
      required body,
      required String token,
      String? contentType}) async {
    var response = await _dio.post(
      '$_baseUrl$endPoint',
      data: body,
      options: Options(
        contentType: contentType ?? Headers.formUrlEncodedContentType,
        headers: {
          'Authorization': "Bearer $token",
        },
      ),
    );
    return response;
  }
}
