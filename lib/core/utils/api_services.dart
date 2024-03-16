import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  final String baseUrl = 'https://api.stripe.com/v1/';

  Future<Response> post(
      {required body,
      required String endPoint,
      required String token,
      Map<String, String>? headers,
      String? contentType}) async {
    var response = await dio.post(
      '$baseUrl$endPoint',
      data: body,
      options: Options(
        contentType: contentType,
        headers: headers ?? {'Authorization': "Bearer $token"},
      ),
    );

    return response;
  }
}
