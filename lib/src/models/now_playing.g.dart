// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NowPlayingImpl _$$NowPlayingImplFromJson(Map<String, dynamic> json) =>
    _$NowPlayingImpl(
      nowPlayingDates: json['date'] == null
          ? null
          : NowPlayingDates.fromJson(json['date'] as Map<String, dynamic>),
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => NowPlayingResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$NowPlayingImplToJson(_$NowPlayingImpl instance) =>
    <String, dynamic>{
      'date': instance.nowPlayingDates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$NowPlayingDatesImpl _$$NowPlayingDatesImplFromJson(
        Map<String, dynamic> json) =>
    _$NowPlayingDatesImpl(
      maximum: json['maximum'] as String?,
      minimum: json['minimum'] as String?,
    );

Map<String, dynamic> _$$NowPlayingDatesImplToJson(
        _$NowPlayingDatesImpl instance) =>
    <String, dynamic>{
      'maximum': instance.maximum,
      'minimum': instance.minimum,
    };

_$NowPlayingResultImpl _$$NowPlayingResultImplFromJson(
        Map<String, dynamic> json) =>
    _$NowPlayingResultImpl(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds: (json['genre_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      originaLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$NowPlayingResultImplToJson(
        _$NowPlayingResultImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originaLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
