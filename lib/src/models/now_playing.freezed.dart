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
  List<Movie> get results => throw _privateConstructorUsedError;
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
      List<Movie> results,
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
              as List<Movie>,
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
      List<Movie> results,
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
              as List<Movie>,
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
      required final List<Movie> results,
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
  final List<Movie> _results;
  @override
  List<Movie> get results {
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
      required final List<Movie> results,
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
  List<Movie> get results;
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
