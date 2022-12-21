import 'dart:convert' as convert;
import 'package:desafio_1/services/client/response_aux.dart';
import 'package:http/http.dart' as http;

import '../http_service.dart';

class HttpService implements IHttpService {
  final http.Client _client;

  const HttpService({required http.Client client}) : _client = client;

  @override
  Future<ResponseAux> get(String url) async {
    final parser = Uri.parse(url);
    final response = await _client.get(parser);
    final json = convert.jsonDecode(response.body);
    final responseAux = ResponseAux(json);
    return responseAux;
  }
}
