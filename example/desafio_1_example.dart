import 'package:dio/dio.dart';

import 'controller/user_controller.dart';
import 'repositories/fetch_user_repository.dart';

void main() async {
  //aqui eu instancio a implementação do repository e passo para o controller
  var fetchUserRepository = FetchUserRepositoryImpl();
  //aqui eu instancio o controller e passo a implementação do repository
  var userController =
      UserController(repository: fetchUserRepository, dio: Dio());
  //aqui eu chamo o método do controller que printa os dados
  userController.fetchUser();
}
