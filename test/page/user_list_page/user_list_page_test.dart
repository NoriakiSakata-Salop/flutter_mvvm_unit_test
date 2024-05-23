import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_controller.dart';
import 'package:flavor_assets_bundle/page/user_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock_user_list_page_controller.dart';

void main() {
  final UserListPageController fakeController = MockUserListPageController();

  testWidgets('UserListPage test', (WidgetTester tester) async {
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

    expect(find.text('test'), findsOneWidget);
    expect(find.text('ユーザー一覧'), findsOneWidget);
  });
}
