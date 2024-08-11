import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/account.dart';
import '../providers/providers.dart';
import '../tmdb_apis.dart' show UserCollection;

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';

  const ProfilePage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context) {
    final length = UserCollection.values.length;

    return DefaultTabController(
      length: length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(account.username!),
          bottom: TabBar(
            tabs: List<Widget>.generate(
              length,
              (int i) => Tab(
                child: Text(_getTabName(UserCollection.values[i].name)),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            _FavoriteSection(),
            _WatchListSection(),
          ],
        ),
      ),
    );
  }

  String _getTabName(String name) {
    switch (name) {
      case 'favorite':
        return 'Favorite';
      case 'watchLater':
        return 'Watch later';
      default:
        return 'Undefined';
    }
  }
}

class ProfileArgs {
  const ProfileArgs(this.account);

  final Account account;
}

class _FavoriteSection extends ConsumerWidget {
  const _FavoriteSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var favorite =
        ref.watch(moviesProvider(collection: UserCollection.favorite));

    return favorite.when(
      data: (data) => data.results.isEmpty
          ? const Center(child: Text('No data'))
          : ListView.builder(
              itemBuilder: (context, i) => ListTile(
                title: Text(data.results[i].originalTitle!),
              ),
              itemCount: data.results.length,
            ),
      error: (err, _) => Center(child: Text('$err')),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}

class _WatchListSection extends ConsumerWidget {
  const _WatchListSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watchList =
        ref.watch(moviesProvider(collection: UserCollection.watchLater));

    return watchList.when(
      data: (data) => data.results.isEmpty
          ? const Center(child: Text('No data'))
          : ListView.builder(
              itemBuilder: (context, i) => ListTile(
                title: Text(data.results[i].originalTitle!),
              ),
              itemCount: data.results.length,
            ),
      error: (err, _) => Center(child: Text('$err')),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
