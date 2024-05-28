import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_controller.dart';
import 'package:flavor_assets_bundle/model/user/user.dart';
import 'package:flavor_assets_bundle/repository/user_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'user_list_page_controller_test.mocks.dart';

@GenerateNiceMocks([MockSpec<UsersRepository>()])
void main() {
  test(
    'user list page controller test',
    () async {
      final UsersRepository fakeRepository = MockUsersRepository();

      final controller = UserListPageController(repository: fakeRepository);

      final mockData = [
        User(id: 1, name: 'test1'),
        User(id: 2, name: 'test2'),
        User(id: 3, name: 'test3')
      ];

      when(fakeRepository.fetchUsers())
          .thenAnswer((realInvocation) async => mockData);

      expect(
        await controller.fetchUsers(),
        mockData,
      );
    },
  );
}
