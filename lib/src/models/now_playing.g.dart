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
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
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
