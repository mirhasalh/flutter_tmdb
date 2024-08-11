import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie.dart';

part 'movies.freezed.dart';
part 'movies.g.dart';

@freezed
class Movies with _$Movies {
  const factory Movies({
    required int? page,
    required List<Movie> results,
    @JsonKey(name: 'total_pages') required int? totalPages,
    @JsonKey(name: 'total_results') required int? totalResults,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) =>
      _$MoviesFromJson(json);
}
