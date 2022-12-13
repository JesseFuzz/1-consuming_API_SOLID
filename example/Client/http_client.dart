import 'dart:convert';
import 'package:http/http.dart' as http;
import '../services/http_service.dart';

class HttpService implements IHttpService {
  final http.Client client;

  HttpService(this.client);

  @override
  Future<dynamic> get(String url) async {
    var parser = Uri.parse(url);
    var response = await client.get(parser);
    var json = jsonDecode(response.body);
    var responseAux = ResponseAux(json);
    return responseAux;
  }
}

class ResponseAux {
  dynamic data;

  ResponseAux(this.data);
}
