import 'package:desafio_1/repositories/fetch_user_repository.dart';
import 'package:desafio_1/services/Client/dio_client.dart';
import 'package:desafio_1/services/Client/http_client.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'controller/user_controller.dart';

void main() async {
  final httpClient = http.Client();
  final httpService = HttpService(client: httpClient);

  final dio = Dio();
  //injeção de dependência, passando a instância do dio para o service
  final dioService = DioService(dio);
  //aqui eu instancio a implementação do repository e passo para o controller

  final fetchUserRepository = FetchUserRepositoryImpl(httpService: dioService);
  //aqui eu instancio o controller e passo a implementação do repository
  final userController = UserController(repository: fetchUserRepository);
  //aqui eu chamo o método do controller que printa os dados
  userController.fetchUser();
}
