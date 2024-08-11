// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  Avatar? get avatar => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_639_1')
  String? get iso6391 => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'include_adult')
  bool? get includeAdult => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {Avatar? avatar,
      int? id,
      @JsonKey(name: 'iso_639_1') String? iso6391,
      @JsonKey(name: 'iso_3166_1') String? iso31661,
      String? name,
      @JsonKey(name: 'include_adult') bool? includeAdult,
      String? username});

  $AvatarCopyWith<$Res>? get avatar;
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? id = freezed,
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? name = freezed,
    Object? includeAdult = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      includeAdult: freezed == includeAdult
          ? _value.includeAdult
          : includeAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvatarCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $AvatarCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Avatar? avatar,
      int? id,
      @JsonKey(name: 'iso_639_1') String? iso6391,
      @JsonKey(name: 'iso_3166_1') String? iso31661,
      String? name,
      @JsonKey(name: 'include_adult') bool? includeAdult,
      String? username});

  @override
  $AvatarCopyWith<$Res>? get avatar;
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? id = freezed,
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? name = freezed,
    Object? includeAdult = freezed,
    Object? username = freezed,
  }) {
    return _then(_$AccountImpl(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      includeAdult: freezed == includeAdult
          ? _value.includeAdult
          : includeAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl implements _Account {
  const _$AccountImpl(
      {required this.avatar,
      required this.id,
      @JsonKey(name: 'iso_639_1') required this.iso6391,
      @JsonKey(name: 'iso_3166_1') required this.iso31661,
      required this.name,
      @JsonKey(name: 'include_adult') required this.includeAdult,
      required this.username});

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final Avatar? avatar;
  @override
  final int? id;
  @override
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @override
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  @override
  final String? name;
  @override
  @JsonKey(name: 'include_adult')
  final bool? includeAdult;
  @override
  final String? username;

  @override
  String toString() {
    return 'Account(avatar: $avatar, id: $id, iso6391: $iso6391, iso31661: $iso31661, name: $name, includeAdult: $includeAdult, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.includeAdult, includeAdult) ||
                other.includeAdult == includeAdult) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, avatar, id, iso6391, iso31661, name, includeAdult, username);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required final Avatar? avatar,
      required final int? id,
      @JsonKey(name: 'iso_639_1') required final String? iso6391,
      @JsonKey(name: 'iso_3166_1') required final String? iso31661,
      required final String? name,
      @JsonKey(name: 'include_adult') required final bool? includeAdult,
      required final String? username}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  Avatar? get avatar;
  @override
  int? get id;
  @override
  @JsonKey(name: 'iso_639_1')
  String? get iso6391;
  @override
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661;
  @override
  String? get name;
  @override
  @JsonKey(name: 'include_adult')
  bool? get includeAdult;
  @override
  String? get username;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Avatar _$AvatarFromJson(Map<String, dynamic> json) {
  return _Avatar.fromJson(json);
}

/// @nodoc
mixin _$Avatar {
  Gravatar? get gravatar => throw _privateConstructorUsedError;
  Tmdb? get tmdb => throw _privateConstructorUsedError;

  /// Serializes this Avatar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Avatar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvatarCopyWith<Avatar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarCopyWith<$Res> {
  factory $AvatarCopyWith(Avatar value, $Res Function(Avatar) then) =
      _$AvatarCopyWithImpl<$Res, Avatar>;
  @useResult
  $Res call({Gravatar? gravatar, Tmdb? tmdb});

  $GravatarCopyWith<$Res>? get gravatar;
  $TmdbCopyWith<$Res>? get tmdb;
}

/// @nodoc
class _$AvatarCopyWithImpl<$Res, $Val extends Avatar>
    implements $AvatarCopyWith<$Res> {
  _$AvatarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Avatar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gravatar = freezed,
    Object? tmdb = freezed,
  }) {
    return _then(_value.copyWith(
      gravatar: freezed == gravatar
          ? _value.gravatar
          : gravatar // ignore: cast_nullable_to_non_nullable
              as Gravatar?,
      tmdb: freezed == tmdb
          ? _value.tmdb
          : tmdb // ignore: cast_nullable_to_non_nullable
              as Tmdb?,
    ) as $Val);
  }

  /// Create a copy of Avatar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GravatarCopyWith<$Res>? get gravatar {
    if (_value.gravatar == null) {
      return null;
    }

    return $GravatarCopyWith<$Res>(_value.gravatar!, (value) {
      return _then(_value.copyWith(gravatar: value) as $Val);
    });
  }

  /// Create a copy of Avatar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TmdbCopyWith<$Res>? get tmdb {
    if (_value.tmdb == null) {
      return null;
    }

    return $TmdbCopyWith<$Res>(_value.tmdb!, (value) {
      return _then(_value.copyWith(tmdb: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AvatarImplCopyWith<$Res> implements $AvatarCopyWith<$Res> {
  factory _$$AvatarImplCopyWith(
          _$AvatarImpl value, $Res Function(_$AvatarImpl) then) =
      __$$AvatarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Gravatar? gravatar, Tmdb? tmdb});

  @override
  $GravatarCopyWith<$Res>? get gravatar;
  @override
  $TmdbCopyWith<$Res>? get tmdb;
}

/// @nodoc
class __$$AvatarImplCopyWithImpl<$Res>
    extends _$AvatarCopyWithImpl<$Res, _$AvatarImpl>
    implements _$$AvatarImplCopyWith<$Res> {
  __$$AvatarImplCopyWithImpl(
      _$AvatarImpl _value, $Res Function(_$AvatarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Avatar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gravatar = freezed,
    Object? tmdb = freezed,
  }) {
    return _then(_$AvatarImpl(
      gravatar: freezed == gravatar
          ? _value.gravatar
          : gravatar // ignore: cast_nullable_to_non_nullable
              as Gravatar?,
      tmdb: freezed == tmdb
          ? _value.tmdb
          : tmdb // ignore: cast_nullable_to_non_nullable
              as Tmdb?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarImpl implements _Avatar {
  const _$AvatarImpl({required this.gravatar, required this.tmdb});

  factory _$AvatarImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarImplFromJson(json);

  @override
  final Gravatar? gravatar;
  @override
  final Tmdb? tmdb;

  @override
  String toString() {
    return 'Avatar(gravatar: $gravatar, tmdb: $tmdb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarImpl &&
            (identical(other.gravatar, gravatar) ||
                other.gravatar == gravatar) &&
            (identical(other.tmdb, tmdb) || other.tmdb == tmdb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gravatar, tmdb);

  /// Create a copy of Avatar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarImplCopyWith<_$AvatarImpl> get copyWith =>
      __$$AvatarImplCopyWithImpl<_$AvatarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarImplToJson(
      this,
    );
  }
}

abstract class _Avatar implements Avatar {
  const factory _Avatar(
      {required final Gravatar? gravatar,
      required final Tmdb? tmdb}) = _$AvatarImpl;

  factory _Avatar.fromJson(Map<String, dynamic> json) = _$AvatarImpl.fromJson;

  @override
  Gravatar? get gravatar;
  @override
  Tmdb? get tmdb;

  /// Create a copy of Avatar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvatarImplCopyWith<_$AvatarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Gravatar _$GravatarFromJson(Map<String, dynamic> json) {
  return _Gravatar.fromJson(json);
}

/// @nodoc
mixin _$Gravatar {
  String? get hash => throw _privateConstructorUsedError;

  /// Serializes this Gravatar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Gravatar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GravatarCopyWith<Gravatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GravatarCopyWith<$Res> {
  factory $GravatarCopyWith(Gravatar value, $Res Function(Gravatar) then) =
      _$GravatarCopyWithImpl<$Res, Gravatar>;
  @useResult
  $Res call({String? hash});
}

/// @nodoc
class _$GravatarCopyWithImpl<$Res, $Val extends Gravatar>
    implements $GravatarCopyWith<$Res> {
  _$GravatarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Gravatar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = freezed,
  }) {
    return _then(_value.copyWith(
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GravatarImplCopyWith<$Res>
    implements $GravatarCopyWith<$Res> {
  factory _$$GravatarImplCopyWith(
          _$GravatarImpl value, $Res Function(_$GravatarImpl) then) =
      __$$GravatarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? hash});
}

/// @nodoc
class __$$GravatarImplCopyWithImpl<$Res>
    extends _$GravatarCopyWithImpl<$Res, _$GravatarImpl>
    implements _$$GravatarImplCopyWith<$Res> {
  __$$GravatarImplCopyWithImpl(
      _$GravatarImpl _value, $Res Function(_$GravatarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Gravatar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = freezed,
  }) {
    return _then(_$GravatarImpl(
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GravatarImpl implements _Gravatar {
  const _$GravatarImpl({required this.hash});

  factory _$GravatarImpl.fromJson(Map<String, dynamic> json) =>
      _$$GravatarImplFromJson(json);

  @override
  final String? hash;

  @override
  String toString() {
    return 'Gravatar(hash: $hash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GravatarImpl &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hash);

  /// Create a copy of Gravatar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GravatarImplCopyWith<_$GravatarImpl> get copyWith =>
      __$$GravatarImplCopyWithImpl<_$GravatarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GravatarImplToJson(
      this,
    );
  }
}

abstract class _Gravatar implements Gravatar {
  const factory _Gravatar({required final String? hash}) = _$GravatarImpl;

  factory _Gravatar.fromJson(Map<String, dynamic> json) =
      _$GravatarImpl.fromJson;

  @override
  String? get hash;

  /// Create a copy of Gravatar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GravatarImplCopyWith<_$GravatarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tmdb _$TmdbFromJson(Map<String, dynamic> json) {
  return _Tmdb.fromJson(json);
}

/// @nodoc
mixin _$Tmdb {
  @JsonKey(name: 'avatar_path')
  String? get avatarPath => throw _privateConstructorUsedError;

  /// Serializes this Tmdb to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tmdb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TmdbCopyWith<Tmdb> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TmdbCopyWith<$Res> {
  factory $TmdbCopyWith(Tmdb value, $Res Function(Tmdb) then) =
      _$TmdbCopyWithImpl<$Res, Tmdb>;
  @useResult
  $Res call({@JsonKey(name: 'avatar_path') String? avatarPath});
}

/// @nodoc
class _$TmdbCopyWithImpl<$Res, $Val extends Tmdb>
    implements $TmdbCopyWith<$Res> {
  _$TmdbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tmdb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarPath = freezed,
  }) {
    return _then(_value.copyWith(
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TmdbImplCopyWith<$Res> implements $TmdbCopyWith<$Res> {
  factory _$$TmdbImplCopyWith(
          _$TmdbImpl value, $Res Function(_$TmdbImpl) then) =
      __$$TmdbImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'avatar_path') String? avatarPath});
}

/// @nodoc
class __$$TmdbImplCopyWithImpl<$Res>
    extends _$TmdbCopyWithImpl<$Res, _$TmdbImpl>
    implements _$$TmdbImplCopyWith<$Res> {
  __$$TmdbImplCopyWithImpl(_$TmdbImpl _value, $Res Function(_$TmdbImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tmdb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarPath = freezed,
  }) {
    return _then(_$TmdbImpl(
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TmdbImpl implements _Tmdb {
  const _$TmdbImpl({@JsonKey(name: 'avatar_path') required this.avatarPath});

  factory _$TmdbImpl.fromJson(Map<String, dynamic> json) =>
      _$$TmdbImplFromJson(json);

  @override
  @JsonKey(name: 'avatar_path')
  final String? avatarPath;

  @override
  String toString() {
    return 'Tmdb(avatarPath: $avatarPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TmdbImpl &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, avatarPath);

  /// Create a copy of Tmdb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TmdbImplCopyWith<_$TmdbImpl> get copyWith =>
      __$$TmdbImplCopyWithImpl<_$TmdbImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TmdbImplToJson(
      this,
    );
  }
}

abstract class _Tmdb implements Tmdb {
  const factory _Tmdb(
          {@JsonKey(name: 'avatar_path') required final String? avatarPath}) =
      _$TmdbImpl;

  factory _Tmdb.fromJson(Map<String, dynamic> json) = _$TmdbImpl.fromJson;

  @override
  @JsonKey(name: 'avatar_path')
  String? get avatarPath;

  /// Create a copy of Tmdb
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TmdbImplCopyWith<_$TmdbImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
