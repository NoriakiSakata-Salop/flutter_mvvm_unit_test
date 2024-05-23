import 'package:flavor_assets_bundle/model/user/user.dart';
import 'package:flavor_assets_bundle/repository/api_client.dart';

abstract class UsersRepositoryInterface {
  Future<List<User>?> fetchUsers();
}

class UsersRepository implements UsersRepositoryInterface {
  final ApiClient _apiClient;

  UsersRepository({ApiClient? apiClient})
      : _apiClient = apiClient ?? ApiClient();

  @override
  Future<List<User>?> fetchUsers() async {
    final datas = await _apiClient.get('/users');
    if (datas is List<dynamic>) {
      return datas.map((data) => User.fromJson(data)).toList();
    }
    return null;
  }
}
