import '../models/github_model.dart';
import '../services/http_service.dart';
import 'repository.dart';

class FetchUserRepositoryImpl extends FetchUserRepository {
  //aqui eu estou recebendo a implementação do service é o tipo da interface que vou
  final IHttpService _httpService;
  //método que está sendo implementado da classe abstrata

  FetchUserRepositoryImpl({required IHttpService httpService})
      : _httpService = httpService;
  @override
  Future<GitHubUserModel> fetchUser() async {
    final response =
        await _httpService.get('https://api.github.com/users/Flutterando');
    //retorna um Future<dynamic> e eu preciso de um Future<FlutterandoUser>

    var flutterandoUser = GitHubUserModel.fromJson(
      json: response.data,
    );
    return flutterandoUser;
  }
}
