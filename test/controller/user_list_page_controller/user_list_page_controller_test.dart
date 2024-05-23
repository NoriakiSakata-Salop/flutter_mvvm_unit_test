import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_controller.dart';
import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_state.dart';
import 'package:flavor_assets_bundle/model/user/user.dart';
import 'package:flavor_assets_bundle/repository/user_repository.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock_users_repository.dart';

void main() {
  test(
    'user list page controller test',
    () async {
      final UsersRepository fakeRepository = MockUsersRepository();

      final controller = UserListPageController(repository: fakeRepository);

      expect(
        await controller.build(),
        UserListPageState(
          users: [User(id: 1, name: 'test')],
        ),
      );

      expect(
        await controller.fetchUsers(),
        [User(id: 1, name: 'test')],
      );
    },
  );
}
