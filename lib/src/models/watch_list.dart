import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie.dart';

part 'watch_list.freezed.dart';
part 'watch_list.g.dart';

@freezed
class WatchList with _$WatchList {
  const factory WatchList({
    required int? page,
    required List<Movie> results,
    @JsonKey(name: 'total_pages') required int? totalPages,
    @JsonKey(name: 'total_results') required int? totalResults,
  }) = _WatchList;

  factory WatchList.fromJson(Map<String, dynamic> json) =>
      _$WatchListFromJson(json);
}
