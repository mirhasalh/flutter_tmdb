import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie.dart';

part 'favorite.freezed.dart';
part 'favorite.g.dart';

@freezed
class Favorite with _$Favorite {
  const factory Favorite({
    required int? page,
    required List<Movie> results,
    @JsonKey(name: 'total_pages') required int? totalPages,
    @JsonKey(name: 'total_results') required int? totalResults,
  }) = _Favorite;

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);
}
