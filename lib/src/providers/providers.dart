import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/models.dart';
import '../tmdb_apis.dart';

part 'providers.g.dart';

@riverpod
Future<NowPlaying> nowPlaying(NowPlayingRef ref) async {
  final nowPlaying = await getNowPlaying();
  return nowPlaying;
}
