import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_state.dart';
import 'package:flavor_assets_bundle/model/user/user.dart';
import 'package:flavor_assets_bundle/repository/user_repository.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_list_page_controller.g.dart';

@riverpod
class UserListPageController extends _$UserListPageController {
  UserListPageController({UsersRepository? repository})
      : _repository = repository ?? UsersRepository();
  final UsersRepository _repository;

  @override
  Future<UserListPageState> build() async {
    return UserListPageState(users: await fetchUsers());
  }

  Future<List<User>?> fetchUsers() async {
    return await _repository.fetchUsers();
  }
}
