import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required bool? adult,
    @JsonKey(name: 'backdrop_path') required String? backdropPath,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
    required int? id,
    @JsonKey(name: 'original_language') required String? originaLanguage,
    @JsonKey(name: 'original_title') required String? originalTitle,
    required String? overview,
    required double? popularity,
    @JsonKey(name: 'poster_path') required String? posterPath,
    @JsonKey(name: 'release_date') required String? releaseDate,
    required String? title,
    required bool? video,
    @JsonKey(name: 'vote_average') required double? voteAverage,
    @JsonKey(name: 'vote_count') required int? voteCount,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieFromJson(json);
}