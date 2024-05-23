import 'package:flavor_assets_bundle/model/user/user.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_page_state.freezed.dart';

@freezed
class UserListPageState with _$UserListPageState {
  factory UserListPageState({List<User>? users}) = _UserListPageState;
}
