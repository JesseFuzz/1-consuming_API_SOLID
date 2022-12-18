import '../repositories/repository.dart';

class UserController {
  //o tipo é a interface, não a a implementação
  final FetchUserRepository _repository;

  const UserController({required FetchUserRepository repository})
      : _repository = repository;

  Future<void> fetchUser() async {
    //aqui eu recebo o método do repository
    final response = await _repository.fetchUser();
    //aqui eu somente printo o retorno do método

    print(response.login);
    print(response.blog);
    print(response.name);
    print(response.avatarUrl);
    print(response.followers);
    print(response.following);
    print(response.publicRepos);
    print(response.publicGists);
    print(response.location);
    print(response.email);
    print(response.bio);
    print(response.twitterUsername);
    print(response.company);
    print(response.hireable);
    print(response.createdAt);
    print(response.updatedAt);
    print(response.eventsUrl);
    print(response.followersUrl);
    print(response.followingUrl);
    print(response.gistsUrl);
    print(response.gravatarId);
    print(response.htmlUrl);
    print(response.id);
    print(response.nodeId);
    print(response.organizationsUrl);
    print(response.receivedEventsUrl);
    print(response.reposUrl);
    print(response.siteAdmin);
    print(response.starredUrl);
    print(response.subscriptionsUrl);
    print(response.type);
    print(response.url);
  }
}
