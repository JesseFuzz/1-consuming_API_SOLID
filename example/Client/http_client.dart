import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import '../services/http_service.dart';

class HttpService implements IHttpService {
  final http.Client client;

  HttpService(this.client);

  @override
  Future<Response> get(String url) async {
    return jsonDecode((await client.get(Uri.parse(url))).body);
  }
}
