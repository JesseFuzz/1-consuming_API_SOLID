import 'package:dio/dio.dart';
import '../services/http_service.dart';

class DioService implements IHttpService {
  final Dio dio;

  DioService(this.dio);

  @override
  Future<Response> get(String url) async {
    return (await dio.get(url));
  }
}
