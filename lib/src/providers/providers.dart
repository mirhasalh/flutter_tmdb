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
Future<Favorite> favorite(FavoriteRef ref) async {
  final favorite = await getFavorite();
  return favorite;
}

@riverpod
Future<WatchList> watchList(WatchListRef ref) async {
  final watchList = getWatchList();
  return watchList;
}
