import 'dart:convert';

import 'package:http/http.dart' as http;

import '../api_keys.dart';
import 'models/models.dart';

enum UserCollection { favorite, watchLater }

Future<void> getConfiguration({
  required Function(ConfigImages) onSuccess,
  required Function(int) onError,
}) async {
  final url = Uri.parse('https://api.themoviedb.org/3/configuration');

  final headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer $kSessionToken',
  };

  final res = await http.get(url, headers: headers);

  if (res.statusCode == 200) {
    final data = json.decode(res.body);
    onSuccess(ConfigImages.fromJson(data['images']));
  } else {
    onError(res.statusCode);
  }
}

Future<NowPlaying> getNowPlaying() async {
  final url = Uri.parse('https://api.themoviedb.org/3/movie/now_playing');

  final headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer $kSessionToken',
  };

  final res = await http.get(url, headers: headers);

  if (res.statusCode != 200) throw Exception('Failed to load');

  final data = json.decode(res.body);

  return NowPlaying.fromJson(data);
}

Future<Account> accountDetails() async {
  final url = Uri.parse('https://api.themoviedb.org/3/account/$kRequestToken');

  final headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer $kSessionToken',
  };

  final res = await http.get(url, headers: headers);

  if (res.statusCode != 200) throw Exception('Failed to load');

  final data = json.decode(res.body);

  return Account.fromJson(data);
}

String _getPath(UserCollection collection) {
  switch (collection) {
    case UserCollection.favorite:
      return '/favorite/movies';
    case UserCollection.watchLater:
      return '/watchlist/movies';
    default:
      return '/watchlist/movies';
  }
}

Future<Movies> getMovies(UserCollection collection) async {
  const base = 'https://api.themoviedb.org';
  final path = _getPath(collection);

  final url = Uri.parse('$base/3/account/$kRequestToken$path');

  final headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer $kSessionToken',
  };

  final res = await http.get(url, headers: headers);

  if (res.statusCode != 200) throw Exception('Failed to load');

  final data = json.decode(res.body);

  return Movies.fromJson(data);
}

Future<Movies> getSimilar(int id) async {
  const base = 'https://api.themoviedb.org';

  final url = Uri.parse('$base/3/movie/$id/similar');

  final headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer $kSessionToken',
  };

  final res = await http.get(url, headers: headers);

  if (res.statusCode != 200) throw Exception('Failed to load');

  final data = json.decode(res.body);

  return Movies.fromJson(data);
}
