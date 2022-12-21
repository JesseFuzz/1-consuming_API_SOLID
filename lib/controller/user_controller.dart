import 'package:desafio_1/models/github_model.dart';

import '../repositories/repository.dart';

class UserController {
  final FetchUserRepository _repository;

  const UserController({required FetchUserRepository repository})
      : _repository = repository;

  Future<GitHubUserModel> fetchUser() async {
    final model = await _repository.fetchUser();
    return model;
  }
}
