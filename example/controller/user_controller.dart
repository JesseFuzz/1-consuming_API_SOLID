import '../repositories/repository.dart';

class UserController {
  //o tipo é a interface, não a a implementação
  final FetchUserRepository repository;

  UserController({required this.repository});

  Future<void> fetchUser() async {
    //aqui eu recebo o método do repository
    var response = await repository.fetchUser();
    //aqui eu somente printo o retorno do método
    print(response.login);
    print(response.blog);
    print(response.name);
    print(response.avatarUrl);
  }
}
