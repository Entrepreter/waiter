import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RestClient {
  final _dio = Dio();

  RestClient() {
    _dio.interceptors.add(PrettyDioLogger());
// customization
    _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
  }

  Future<dynamic> makeGetRequest(String url) async {
    var response = await _dio.get(url);

    return response.data;
  }
}
