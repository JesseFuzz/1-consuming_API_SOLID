import 'package:dio/dio.dart';
import '../models/flutterando_model.dart';
import '../services/http_service.dart';
import 'repository.dart';

class FetchUserRepositoryImpl implements FetchUserRepository {
  final IHttpService httpService;
  //método que está sendo implementado da classe abstrata

  FetchUserRepositoryImpl({required this.httpService});
  @override
  Future<FlutterandoUser> fetchUser(Dio dio) async {
    final response =
        await httpService.get('https://api.github.com/users/Flutterando');
    //retorna um Future<dynamic> e eu preciso de um Future<FlutterandoUser>

    var flutterandoUser = FlutterandoUser(
        login: response.data['login'],
        blog: response.data['blog'],
        name: response.data['name'],
        avatarUrl: response.data['avatar_url']);
    return flutterandoUser;
  }
}
