import 'package:dio/dio.dart';
import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_controller.dart';
import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_state.dart';
import 'package:flavor_assets_bundle/model/user/user.dart';
import 'package:flavor_assets_bundle/repository/api_client.dart';
import 'package:flavor_assets_bundle/repository/user_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../mock_data/dev/user_mock_data.dart';
import 'mock_api_client.dart';
import 'user_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ApiClient>()])
void main() {
  test(
    'user repository test',
    () async {
      final mockApiClient = MockApiClient();
      final repository = UsersRepository(apiClient: mockApiClient);

      when(mockApiClient.get('/users'))
          .thenAnswer((realInvocation) async => UserMockdata.list);

      expect(
        repository.fetchUsers(),
        [User(id: 1, name: 'test')],
      );
    },
  );
}
