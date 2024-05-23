import 'package:flavor_assets_bundle/model/user/user.dart';
import 'package:flavor_assets_bundle/repository/user_repository.dart';
import 'package:mockito/mockito.dart';

class MockUsersRepository extends Mock implements UsersRepository {
  @override
  Future<List<User>> fetchUsers() async {
    return [User(id: 1, name: 'test')];
  }
}