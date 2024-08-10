// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NowPlaying _$NowPlayingFromJson(Map<String, dynamic> json) {
  return _NowPlaying.fromJson(json);
}

/// @nodoc
mixin _$NowPlaying {
  @JsonKey(name: 'date')
  NowPlayingDates? get nowPlayingDates => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  List<NowPlayingResult> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  /// Serializes this NowPlaying to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NowPlaying
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NowPlayingCopyWith<NowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingCopyWith<$Res> {
  factory $NowPlayingCopyWith(
          NowPlaying value, $Res Function(NowPlaying) then) =
      _$NowPlayingCopyWithImpl<$Res, NowPlaying>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date') NowPlayingDates? nowPlayingDates,
      int? page,
      List<NowPlayingResult> results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});

  $NowPlayingDatesCopyWith<$Res>? get nowPlayingDates;
}

/// @nodoc
class _$NowPlayingCopyWithImpl<$Res, $Val extends NowPlaying>
    implements $NowPlayingCopyWith<$Res> {
  _$NowPlayingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NowPlaying
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowPlayingDates = freezed,
    Object? page = freezed,
    Object? results = null,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      nowPlayingDates: freezed == nowPlayingDates
          ? _value.nowPlayingDates
          : nowPlayingDates // ignore: cast_nullable_to_non_nullable
              as NowPlayingDates?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NowPlayingResult>,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of NowPlaying
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NowPlayingDatesCopyWith<$Res>? get nowPlayingDates {
    if (_value.nowPlayingDates == null) {
      return null;
    }

    return $NowPlayingDatesCopyWith<$Res>(_value.nowPlayingDates!, (value) {
      return _then(_value.copyWith(nowPlayingDates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NowPlayingImplCopyWith<$Res>
    implements $NowPlayingCopyWith<$Res> {
  factory _$$NowPlayingImplCopyWith(
          _$NowPlayingImpl value, $Res Function(_$NowPlayingImpl) then) =
      __$$NowPlayingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date') NowPlayingDates? nowPlayingDates,
      int? page,
      List<NowPlayingResult> results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});

  @override
  $NowPlayingDatesCopyWith<$Res>? get nowPlayingDates;
}

/// @nodoc
class __$$NowPlayingImplCopyWithImpl<$Res>
    extends _$NowPlayingCopyWithImpl<$Res, _$NowPlayingImpl>
    implements _$$NowPlayingImplCopyWith<$Res> {
  __$$NowPlayingImplCopyWithImpl(
      _$NowPlayingImpl _value, $Res Function(_$NowPlayingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowPlaying
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowPlayingDates = freezed,
    Object? page = freezed,
    Object? results = null,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$NowPlayingImpl(
      nowPlayingDates: freezed == nowPlayingDates
          ? _value.nowPlayingDates
          : nowPlayingDates // ignore: cast_nullable_to_non_nullable
              as NowPlayingDates?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NowPlayingResult>,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NowPlayingImpl implements _NowPlaying {
  const _$NowPlayingImpl(
      {@JsonKey(name: 'date') required this.nowPlayingDates,
      required this.page,
      required final List<NowPlayingResult> results,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _results = results;

  factory _$NowPlayingImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowPlayingImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final NowPlayingDates? nowPlayingDates;
  @override
  final int? page;
  final List<NowPlayingResult> _results;
  @override
  List<NowPlayingResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int? totalResults;

  @override
  String toString() {
    return 'NowPlaying(nowPlayingDates: $nowPlayingDates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingImpl &&
            (identical(other.nowPlayingDates, nowPlayingDates) ||
                other.nowPlayingDates == nowPlayingDates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nowPlayingDates, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  /// Create a copy of NowPlaying
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingImplCopyWith<_$NowPlayingImpl> get copyWith =>
      __$$NowPlayingImplCopyWithImpl<_$NowPlayingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowPlayingImplToJson(
      this,
    );
  }
}

abstract class _NowPlaying implements NowPlaying {
  const factory _NowPlaying(
      {@JsonKey(name: 'date') required final NowPlayingDates? nowPlayingDates,
      required final int? page,
      required final List<NowPlayingResult> results,
      @JsonKey(name: 'total_pages') required final int? totalPages,
      @JsonKey(name: 'total_results')
      required final int? totalResults}) = _$NowPlayingImpl;

  factory _NowPlaying.fromJson(Map<String, dynamic> json) =
      _$NowPlayingImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  NowPlayingDates? get nowPlayingDates;
  @override
  int? get page;
  @override
  List<NowPlayingResult> get results;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;

  /// Create a copy of NowPlaying
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NowPlayingImplCopyWith<_$NowPlayingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NowPlayingDates _$NowPlayingDatesFromJson(Map<String, dynamic> json) {
  return _NowPlayingDates.fromJson(json);
}

/// @nodoc
mixin _$NowPlayingDates {
  String? get maximum => throw _privateConstructorUsedError;
  String? get minimum => throw _privateConstructorUsedError;

  /// Serializes this NowPlayingDates to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NowPlayingDates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NowPlayingDatesCopyWith<NowPlayingDates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingDatesCopyWith<$Res> {
  factory $NowPlayingDatesCopyWith(
          NowPlayingDates value, $Res Function(NowPlayingDates) then) =
      _$NowPlayingDatesCopyWithImpl<$Res, NowPlayingDates>;
  @useResult
  $Res call({String? maximum, String? minimum});
}

/// @nodoc
class _$NowPlayingDatesCopyWithImpl<$Res, $Val extends NowPlayingDates>
    implements $NowPlayingDatesCopyWith<$Res> {
  _$NowPlayingDatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NowPlayingDates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_value.copyWith(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NowPlayingDatesImplCopyWith<$Res>
    implements $NowPlayingDatesCopyWith<$Res> {
  factory _$$NowPlayingDatesImplCopyWith(_$NowPlayingDatesImpl value,
          $Res Function(_$NowPlayingDatesImpl) then) =
      __$$NowPlayingDatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? maximum, String? minimum});
}

/// @nodoc
class __$$NowPlayingDatesImplCopyWithImpl<$Res>
    extends _$NowPlayingDatesCopyWithImpl<$Res, _$NowPlayingDatesImpl>
    implements _$$NowPlayingDatesImplCopyWith<$Res> {
  __$$NowPlayingDatesImplCopyWithImpl(
      _$NowPlayingDatesImpl _value, $Res Function(_$NowPlayingDatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowPlayingDates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_$NowPlayingDatesImpl(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NowPlayingDatesImpl implements _NowPlayingDates {
  const _$NowPlayingDatesImpl({required this.maximum, required this.minimum});

  factory _$NowPlayingDatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowPlayingDatesImplFromJson(json);

  @override
  final String? maximum;
  @override
  final String? minimum;

  @override
  String toString() {
    return 'NowPlayingDates(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingDatesImpl &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  /// Create a copy of NowPlayingDates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingDatesImplCopyWith<_$NowPlayingDatesImpl> get copyWith =>
      __$$NowPlayingDatesImplCopyWithImpl<_$NowPlayingDatesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowPlayingDatesImplToJson(
      this,
    );
  }
}

abstract class _NowPlayingDates implements NowPlayingDates {
  const factory _NowPlayingDates(
      {required final String? maximum,
      required final String? minimum}) = _$NowPlayingDatesImpl;

  factory _NowPlayingDates.fromJson(Map<String, dynamic> json) =
      _$NowPlayingDatesImpl.fromJson;

  @override
  String? get maximum;
  @override
  String? get minimum;

  /// Create a copy of NowPlayingDates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NowPlayingDatesImplCopyWith<_$NowPlayingDatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NowPlayingResult _$NowPlayingResultFromJson(Map<String, dynamic> json) {
  return _NowPlayingResult.fromJson(json);
}

/// @nodoc
mixin _$NowPlayingResult {
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originaLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;

  /// Serializes this NowPlayingResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NowPlayingResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NowPlayingResultCopyWith<NowPlayingResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingResultCopyWith<$Res> {
  factory $NowPlayingResultCopyWith(
          NowPlayingResult value, $Res Function(NowPlayingResult) then) =
      _$NowPlayingResultCopyWithImpl<$Res, NowPlayingResult>;
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      int? id,
      @JsonKey(name: 'original_language') String? originaLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class _$NowPlayingResultCopyWithImpl<$Res, $Val extends NowPlayingResult>
    implements $NowPlayingResultCopyWith<$Res> {
  _$NowPlayingResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NowPlayingResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = null,
    Object? id = freezed,
    Object? originaLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originaLanguage: freezed == originaLanguage
          ? _value.originaLanguage
          : originaLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NowPlayingResultImplCopyWith<$Res>
    implements $NowPlayingResultCopyWith<$Res> {
  factory _$$NowPlayingResultImplCopyWith(_$NowPlayingResultImpl value,
          $Res Function(_$NowPlayingResultImpl) then) =
      __$$NowPlayingResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      int? id,
      @JsonKey(name: 'original_language') String? originaLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class __$$NowPlayingResultImplCopyWithImpl<$Res>
    extends _$NowPlayingResultCopyWithImpl<$Res, _$NowPlayingResultImpl>
    implements _$$NowPlayingResultImplCopyWith<$Res> {
  __$$NowPlayingResultImplCopyWithImpl(_$NowPlayingResultImpl _value,
      $Res Function(_$NowPlayingResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowPlayingResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = null,
    Object? id = freezed,
    Object? originaLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$NowPlayingResultImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originaLanguage: freezed == originaLanguage
          ? _value.originaLanguage
          : originaLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NowPlayingResultImpl implements _NowPlayingResult {
  const _$NowPlayingResultImpl(
      {required this.adult,
      @JsonKey(name: 'backdrop_path') required this.backdropPath,
      @JsonKey(name: 'genre_ids') required final List<int> genreIds,
      required this.id,
      @JsonKey(name: 'original_language') required this.originaLanguage,
      @JsonKey(name: 'original_title') required this.originalTitle,
      required this.overview,
      required this.popularity,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'release_date') required this.releaseDate,
      required this.title,
      required this.video,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount})
      : _genreIds = genreIds;

  factory _$NowPlayingResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowPlayingResultImplFromJson(json);

  @override
  final bool? adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final List<int> _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  final int? id;
  @override
  @JsonKey(name: 'original_language')
  final String? originaLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @override
  String toString() {
    return 'NowPlayingResult(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originaLanguage: $originaLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingResultImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originaLanguage, originaLanguage) ||
                other.originaLanguage == originaLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdropPath,
      const DeepCollectionEquality().hash(_genreIds),
      id,
      originaLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount);

  /// Create a copy of NowPlayingResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingResultImplCopyWith<_$NowPlayingResultImpl> get copyWith =>
      __$$NowPlayingResultImplCopyWithImpl<_$NowPlayingResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowPlayingResultImplToJson(
      this,
    );
  }
}

abstract class _NowPlayingResult implements NowPlayingResult {
  const factory _NowPlayingResult(
          {required final bool? adult,
          @JsonKey(name: 'backdrop_path') required final String? backdropPath,
          @JsonKey(name: 'genre_ids') required final List<int> genreIds,
          required final int? id,
          @JsonKey(name: 'original_language')
          required final String? originaLanguage,
          @JsonKey(name: 'original_title') required final String? originalTitle,
          required final String? overview,
          required final double? popularity,
          @JsonKey(name: 'poster_path') required final String? posterPath,
          @JsonKey(name: 'release_date') required final String? releaseDate,
          required final String? title,
          required final bool? video,
          @JsonKey(name: 'vote_average') required final double? voteAverage,
          @JsonKey(name: 'vote_count') required final int? voteCount}) =
      _$NowPlayingResultImpl;

  factory _NowPlayingResult.fromJson(Map<String, dynamic> json) =
      _$NowPlayingResultImpl.fromJson;

  @override
  bool? get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @override
  int? get id;
  @override
  @JsonKey(name: 'original_language')
  String? get originaLanguage;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  String? get title;
  @override
  bool? get video;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;

  /// Create a copy of NowPlayingResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NowPlayingResultImplCopyWith<_$NowPlayingResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
