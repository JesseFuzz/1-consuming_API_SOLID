import 'package:desafio_1/repositories/fetch_user_repository.dart';
import 'package:desafio_1/services/client/dio_client.dart';
import 'package:desafio_1/services/client/http_client.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'controller/user_controller.dart';

void main() async {
  final httpClient = http.Client();
  final httpService = HttpService(client: httpClient);

  final dio = Dio();
  final dioService = DioService(dio);

  final fetchUserRepository = FetchUserRepositoryImpl(httpService: httpService);
  final userController = UserController(repository: fetchUserRepository);

  final model = await userController.fetchUser();
  print(model.toString());
}
