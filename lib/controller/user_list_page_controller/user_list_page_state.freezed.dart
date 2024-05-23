// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserListPageState {
  List<User>? get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListPageStateCopyWith<UserListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListPageStateCopyWith<$Res> {
  factory $UserListPageStateCopyWith(
          UserListPageState value, $Res Function(UserListPageState) then) =
      _$UserListPageStateCopyWithImpl<$Res, UserListPageState>;
  @useResult
  $Res call({List<User>? users});
}

/// @nodoc
class _$UserListPageStateCopyWithImpl<$Res, $Val extends UserListPageState>
    implements $UserListPageStateCopyWith<$Res> {
  _$UserListPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserListPageStateImplCopyWith<$Res>
    implements $UserListPageStateCopyWith<$Res> {
  factory _$$UserListPageStateImplCopyWith(_$UserListPageStateImpl value,
          $Res Function(_$UserListPageStateImpl) then) =
      __$$UserListPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User>? users});
}

/// @nodoc
class __$$UserListPageStateImplCopyWithImpl<$Res>
    extends _$UserListPageStateCopyWithImpl<$Res, _$UserListPageStateImpl>
    implements _$$UserListPageStateImplCopyWith<$Res> {
  __$$UserListPageStateImplCopyWithImpl(_$UserListPageStateImpl _value,
      $Res Function(_$UserListPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$UserListPageStateImpl(
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc

class _$UserListPageStateImpl
    with DiagnosticableTreeMixin
    implements _UserListPageState {
  _$UserListPageStateImpl({final List<User>? users}) : _users = users;

  final List<User>? _users;
  @override
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserListPageState(users: $users)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserListPageState'))
      ..add(DiagnosticsProperty('users', users));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListPageStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListPageStateImplCopyWith<_$UserListPageStateImpl> get copyWith =>
      __$$UserListPageStateImplCopyWithImpl<_$UserListPageStateImpl>(
          this, _$identity);
}

abstract class _UserListPageState implements UserListPageState {
  factory _UserListPageState({final List<User>? users}) =
      _$UserListPageStateImpl;

  @override
  List<User>? get users;
  @override
  @JsonKey(ignore: true)
  _$$UserListPageStateImplCopyWith<_$UserListPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
