import 'package:desafio_1/services/client/response_aux.dart';
import 'package:dio/dio.dart';
import '../http_service.dart';
import 'package:dio/dio.dart' hide Response;

class DioService implements IHttpService {
  final Dio _dio;

  const DioService(this._dio);

  @override
  Future<ResponseAux> get(String url) async {
    final dioResponse = (await _dio.get(url));
    final responseAux = ResponseAux(dioResponse.data);
    return responseAux;
  }
}
