import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_images.freezed.dart';
part 'config_images.g.dart';

@freezed
class ConfigImages with _$ConfigImages {
  const factory ConfigImages({
    @JsonKey(name: 'base_url') required String? baseUrl,
    @JsonKey(name: 'secure_base_url') required String? secureBaseUrl,
    @JsonKey(name: 'backdrop_sizes') required List<String> backdropSizes,
    @JsonKey(name: 'logo_sizes') required List<String> logoSizes,
    @JsonKey(name: 'poster_sizes') required List<String> posterSizes,
    @JsonKey(name: 'profile_sizes') required List<String> profileSizes,
    @JsonKey(name: 'still_sizes') required List<String> stillSizes,
  }) = _ConfigImages;

  factory ConfigImages.fromJson(Map<String, dynamic> json) =>
      _$ConfigImagesFromJson(json);
}
