import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_controller.dart';
import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_state.dart';
import 'package:flavor_assets_bundle/model/user/user.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mock_user_list_page_controller.g.dart';

@riverpod
class MockUserListPageController extends _$MockUserListPageController
    with Mock
    implements UserListPageController {
  @override
  Future<UserListPageState> build() async {
    return UserListPageState(users: [User(id: 1, name: 'test')]);
  }
}
