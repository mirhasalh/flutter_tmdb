// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nowPlayingHash() => r'623652138548647894e7242ece95c650d7259ee1';

/// See also [nowPlaying].
@ProviderFor(nowPlaying)
final nowPlayingProvider = AutoDisposeFutureProvider<NowPlaying>.internal(
  nowPlaying,
  name: r'nowPlayingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$nowPlayingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NowPlayingRef = AutoDisposeFutureProviderRef<NowPlaying>;
String _$accountHash() => r'4137a0e52f25ca46d0c31b70f3df20870160b1c1';

/// See also [account].
@ProviderFor(account)
final accountProvider = AutoDisposeFutureProvider<Account>.internal(
  account,
  name: r'accountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$accountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountRef = AutoDisposeFutureProviderRef<Account>;
String _$moviesHash() => r'bd89f1f849690c5abce14dc23ef270dcdca2b058';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [movies].
@ProviderFor(movies)
const moviesProvider = MoviesFamily();

/// See also [movies].
class MoviesFamily extends Family<AsyncValue<Movies>> {
  /// See also [movies].
  const MoviesFamily();

  /// See also [movies].
  MoviesProvider call({
    required UserCollection collection,
  }) {
    return MoviesProvider(
      collection: collection,
    );
  }

  @override
  MoviesProvider getProviderOverride(
    covariant MoviesProvider provider,
  ) {
    return call(
      collection: provider.collection,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'moviesProvider';
}

/// See also [movies].
class MoviesProvider extends AutoDisposeFutureProvider<Movies> {
  /// See also [movies].
  MoviesProvider({
    required UserCollection collection,
  }) : this._internal(
          (ref) => movies(
            ref as MoviesRef,
            collection: collection,
          ),
          from: moviesProvider,
          name: r'moviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$moviesHash,
          dependencies: MoviesFamily._dependencies,
          allTransitiveDependencies: MoviesFamily._allTransitiveDependencies,
          collection: collection,
        );

  MoviesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.collection,
  }) : super.internal();

  final UserCollection collection;

  @override
  Override overrideWith(
    FutureOr<Movies> Function(MoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MoviesProvider._internal(
        (ref) => create(ref as MoviesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        collection: collection,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Movies> createElement() {
    return _MoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MoviesProvider && other.collection == collection;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collection.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MoviesRef on AutoDisposeFutureProviderRef<Movies> {
  /// The parameter `collection` of this provider.
  UserCollection get collection;
}

class _MoviesProviderElement extends AutoDisposeFutureProviderElement<Movies>
    with MoviesRef {
  _MoviesProviderElement(super.provider);

  @override
  UserCollection get collection => (origin as MoviesProvider).collection;
}

String _$similarHash() => r'9a85338a8b512bc0936d6961082958c99c049025';

/// See also [similar].
@ProviderFor(similar)
const similarProvider = SimilarFamily();

/// See also [similar].
class SimilarFamily extends Family<AsyncValue<Movies>> {
  /// See also [similar].
  const SimilarFamily();

  /// See also [similar].
  SimilarProvider call({
    required int id,
  }) {
    return SimilarProvider(
      id: id,
    );
  }

  @override
  SimilarProvider getProviderOverride(
    covariant SimilarProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'similarProvider';
}

/// See also [similar].
class SimilarProvider extends AutoDisposeFutureProvider<Movies> {
  /// See also [similar].
  SimilarProvider({
    required int id,
  }) : this._internal(
          (ref) => similar(
            ref as SimilarRef,
            id: id,
          ),
          from: similarProvider,
          name: r'similarProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$similarHash,
          dependencies: SimilarFamily._dependencies,
          allTransitiveDependencies: SimilarFamily._allTransitiveDependencies,
          id: id,
        );

  SimilarProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Movies> Function(SimilarRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SimilarProvider._internal(
        (ref) => create(ref as SimilarRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Movies> createElement() {
    return _SimilarProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SimilarProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SimilarRef on AutoDisposeFutureProviderRef<Movies> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SimilarProviderElement extends AutoDisposeFutureProviderElement<Movies>
    with SimilarRef {
  _SimilarProviderElement(super.provider);

  @override
  int get id => (origin as SimilarProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
