import 'package:dio/dio.dart';
import '../http_service.dart';
import 'package:dio/dio.dart' hide Response;

class DioService implements IHttpService {
  //isso é uma injeção de dependência
  final Dio _dio;

  const DioService(this._dio);

  @override
  Future<Response> get(String url) async {
    return (await _dio.get(url));
  }
}
