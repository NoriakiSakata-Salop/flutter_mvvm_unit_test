import 'package:flavor_assets_bundle/controller/user_list_page_controller/user_list_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(userListPageControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー一覧'),
      ),
      body: Center(
        child: data.when(
          data: (state) {
            final users = state.users;
            if (users == null || users.isEmpty) {
              return const Text('リストが空です');
            }
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(users[index].name),
                );
              },
            );
          },
          error: (o, s) => const Text(
            'データの取得に失敗しました',
            style: TextStyle(color: Color.fromARGB(255, 165, 142, 140)),
          ),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
