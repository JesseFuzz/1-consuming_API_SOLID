import 'package:dio/dio.dart';
import '../models/flutterando_model.dart';
import 'repository.dart';

class FetchUserRepositoryImpl implements FetchUserRepository {
  //método que está sendo implementado da classe abstrata
  final dio = Dio();

  @override
  Future<FlutterandoUser> fetchUser() async {
    final response =
        await Dio().get('https://api.github.com/users/Flutterando');

    var flutterandoUser = FlutterandoUser(
        login: response.data['login'],
        blog: response.data['blog'],
        name: response.data['name'],
        avatarUrl: response.data['avatar_url']);
    return flutterandoUser;
  }
}
