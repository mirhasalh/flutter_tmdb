import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required Avatar? avatar,
    required int? id,
    @JsonKey(name: 'iso_639_1') required String? iso6391,
    @JsonKey(name: 'iso_3166_1') required String? iso31661,
    required String? name,
    @JsonKey(name: 'include_adult') required bool? includeAdult,
    required String? username,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
class Avatar with _$Avatar {
  const factory Avatar({
    required Gravatar? gravatar,
    required Tmdb? tmdb,
  }) = _Avatar;

  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);
}

@freezed
class Gravatar with _$Gravatar {
  const factory Gravatar({
    required String? hash,
  }) = _Gravatar;

  factory Gravatar.fromJson(Map<String, dynamic> json) =>
      _$GravatarFromJson(json);
}

@freezed
class Tmdb with _$Tmdb {
  const factory Tmdb({
    @JsonKey(name: 'avatar_path') required String? avatarPath,
  }) = _Tmdb;

  factory Tmdb.fromJson(Map<String, dynamic> json) => _$TmdbFromJson(json);
}
