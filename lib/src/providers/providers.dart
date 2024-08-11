import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/models.dart';
import '../tmdb_apis.dart';

part 'providers.g.dart';

@riverpod
Future<NowPlaying> nowPlaying(NowPlayingRef ref) async {
  final nowPlaying = await getNowPlaying();
  return nowPlaying;
}

@riverpod
Future<Account> account(AccountRef ref) async {
  final account = await accountDetails();
  return account;
}

@riverpod
Future<Movies> movies(MoviesRef ref,
    {required UserCollection collection}) async {
  final movies = await getMovies(collection);
  return movies;
}

@riverpod
Future<Movies> similar(SimilarRef ref, {required int id}) async {
  final similar = await getSimilar(id);
  return similar;
}
