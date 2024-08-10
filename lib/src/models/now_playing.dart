import 'package:freezed_annotation/freezed_annotation.dart';

part 'now_playing.freezed.dart';
part 'now_playing.g.dart';

@freezed
class NowPlaying with _$NowPlaying {
  const factory NowPlaying({
    @JsonKey(name: 'date') required NowPlayingDates? nowPlayingDates,
    required int? page,
    required List<NowPlayingResult> results,
    @JsonKey(name: 'total_pages') required int? totalPages,
    @JsonKey(name: 'total_results') required int? totalResults,
  }) = _NowPlaying;

  factory NowPlaying.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingFromJson(json);
}

@freezed
class NowPlayingDates with _$NowPlayingDates {
  const factory NowPlayingDates({
    required String? maximum,
    required String? minimum,
  }) = _NowPlayingDates;

  factory NowPlayingDates.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingDatesFromJson(json);
}

@freezed
class NowPlayingResult with _$NowPlayingResult {
  const factory NowPlayingResult({
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
  }) = _NowPlayingResult;

  factory NowPlayingResult.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingResultFromJson(json);
}
