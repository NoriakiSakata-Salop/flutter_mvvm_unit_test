import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_controller.dart';
import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_state.dart';
import 'package:flavor_assets_bundle/model/user/user.dart';
import 'package:flavor_assets_bundle/page/user_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'user_list_page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<UserListPageController>()])
void main() {
  final UserListPageController fakeController = MockUserListPageController();

  testWidgets('UserListPage test', (WidgetTester tester) async {
    when(fakeController.build())
        .thenAnswer((realInvocation) async => UserListPageState(users: [
              User(id: 1, name: 'test1'),
              User(id: 2, name: 'test2'),
              User(id: 3, name: 'test3')
            ]));

    final container = ProviderContainer(
      overrides: [
        userListPageControllerProvider.overrideWith(() => fakeController)
      ],
    );

    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: const MaterialApp(
          home: ListPage(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('test1'), findsOneWidget);
    expect(find.text('test2'), findsOneWidget);
    expect(find.text('test3'), findsOneWidget);
    expect(find.text('ユーザー一覧'), findsOneWidget);
  });
}
