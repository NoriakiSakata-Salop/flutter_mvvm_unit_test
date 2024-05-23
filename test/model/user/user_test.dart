import 'package:flavor_assets_bundle/model/user/user.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../mock_data/dev/user_mock_data.dart';

void main() {
  test("user model test", () async {
    final user = User.fromJson(UserMockdata.json);
    expect(user.id, 1);
    expect(user.name, 'Leanne Graham');
  });
}
