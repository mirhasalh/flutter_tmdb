import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie.dart';

part 'now_playing.freezed.dart';
part 'now_playing.g.dart';

@freezed
class NowPlaying with _$NowPlaying {
  const factory NowPlaying({
    @JsonKey(name: 'date') required NowPlayingDates? nowPlayingDates,
    required int? page,
    required List<Movie> results,
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
