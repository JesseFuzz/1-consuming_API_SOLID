import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:dio/dio.dart';

import 'Client/dio_client.dart';
import 'Client/http_client.dart';
import 'controller/user_controller.dart';
import 'repositories/fetch_user_repository.dart';

void main() async {
  final httpClient = http.Client();
  final httpService = HttpService(httpClient);
  //***************************************************
  final dio = Dio();
  final dioService = DioService(dio);
  //aqui eu instancio a implementação do repository e passo para o controller
  var fetchUserRepository = FetchUserRepositoryImpl(httpService: dioService);
  //aqui eu instancio o controller e passo a implementação do repository
  var userController =
      UserController(repository: fetchUserRepository, dio: Dio());
  //aqui eu chamo o método do controller que printa os dados
  userController.fetchUser();
}
