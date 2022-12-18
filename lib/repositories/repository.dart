import '../models/github_model.dart';

abstract class FetchUserRepository {
  Future<GitHubUserModel> fetchUser();
}
