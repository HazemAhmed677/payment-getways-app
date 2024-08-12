import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();

  Future<Response> post({
    required String url,
    required Map<String, dynamic> body,
    required String token,
    String? contentType,
  }) async {
    return await dio.post(url,
        data: body,
        options: Options(contentType: contentType, headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Authorization': 'Bearer $token',
        }));
  }
}
