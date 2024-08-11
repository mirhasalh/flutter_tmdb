import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/config_images.dart';
import '../providers/providers.dart';
import 'details_page.dart' show DetailsArgs;
import 'profile_page.dart' show ProfileArgs;

class HomePage extends ConsumerStatefulWidget {
  static const routeName = '/home';

  const HomePage({super.key, required this.images});

  final ConfigImages images;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);
    final textTheme = Theme.of(context).textTheme;
    var account = ref.watch(accountProvider);
    var nowPlaying = ref.watch(nowPlayingProvider);
    final base = '${widget.images.secureBaseUrl}';

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: account.when(
          data: (data) {
            final args = ProfileArgs(data);
            return data.avatar!.tmdb!.avatarPath != null
                ? GestureDetector(
                    onTap: () => nav.pushNamed('/profile', arguments: args),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          '$base/original${data.avatar!.tmdb!.avatarPath}'),
                    ),
                  )
                : GestureDetector(
                    onTap: () => nav.pushNamed('/profile', arguments: args),
                    child: CircleAvatar(
                      child: Text(data.username![0].toUpperCase()),
                    ),
                  );
          },
          error: (err, _) => Text('$err'[0].toUpperCase()),
          loading: () => const SizedBox.shrink(),
        ),
      ),
      body: nowPlaying.when(
        data: (data) {
          var filtered = data.results.where((v) => v.adult == false).toList();
          var toShow = filtered.length > 6 ? filtered.sublist(0, 6) : filtered;
          var sorted = filtered.toList()
            ..sort((a, b) => b.voteAverage!.compareTo(a.voteAverage!));
          var popular = sorted.length > 20 ? sorted.sublist(0, 20) : sorted;

          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: [
              const SizedBox(height: 16.0),
              Text(
                'Now playing',
                style:
                    textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    toShow.length,
                    (int i) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SizedBox(
                        width: 160.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _MoviePoster(
                              baseUrl: base,
                              path: toShow[i].posterPath!,
                              onOptions: () {},
                              onPoster: () => nav.pushNamed(
                                '/details',
                                arguments: DetailsArgs(base, toShow[i]),
                              ),
                            ),
                            const SizedBox(height: 4.0),
                            Text(toShow[i].originalTitle!),
                            Text.rich(
                              TextSpan(
                                text: toShow[i].voteAverage!.toStringAsFixed(1),
                                style: textTheme.titleMedium,
                                children: [
                                  TextSpan(
                                    text: ' popularity',
                                    style: textTheme.bodySmall,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Popular',
                style:
                    textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    popular.length,
                    (int i) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SizedBox(
                        width: 160.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _MoviePoster(
                              baseUrl: base,
                              path: popular[i].posterPath!,
                              onOptions: () {},
                              onPoster: () => nav.pushNamed(
                                '/details',
                                arguments: DetailsArgs(base, popular[i]),
                              ),
                            ),
                            const SizedBox(height: 4.0),
                            Text(popular[i].originalTitle!),
                            Text.rich(
                              TextSpan(
                                text:
                                    popular[i].voteAverage!.toStringAsFixed(1),
                                style: textTheme.titleMedium,
                                children: [
                                  TextSpan(
                                    text: ' popularity',
                                    style: textTheme.bodySmall,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          );
        },
        error: (err, _) => Center(child: Text('$err')),
        loading: () =>
            const Center(child: CircularProgressIndicator.adaptive()),
      ),
    );
  }
}

class HomeArgs {
  const HomeArgs(this.images);

  final ConfigImages images;
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({
    required this.baseUrl,
    required this.path,
    required this.onOptions,
    required this.onPoster,
  });

  final String path;
  final String baseUrl;
  final VoidCallback onOptions;
  final VoidCallback onPoster;

  @override
  Widget build(BuildContext context) {
    final src = '$baseUrl/original$path';
    final colors = Theme.of(context).colorScheme;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          child: GestureDetector(
            onTap: onPoster,
            child: Image.network(src),
          ),
        ),
        Positioned(
          top: 0.0,
          right: 0.0,
          child: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: colors.surface.withAlpha(50),
              foregroundColor: colors.onSurface,
            ),
            constraints: const BoxConstraints(
              minWidth: 20.0,
              minHeight: 20.0,
              maxHeight: 50.0,
              maxWidth: 50.0,
            ),
            padding: const EdgeInsets.all(4.0),
            onPressed: onOptions,
            icon: const Icon(Icons.favorite_border),
          ),
        )
      ],
    );
  }
}
