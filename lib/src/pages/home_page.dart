import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/config_images.dart';
import '../providers/providers.dart';

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
    final textTheme = Theme.of(context).textTheme;
    var nowPlaying = ref.watch(nowPlayingProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('For you'),
      ),
      body: nowPlaying.when(
        data: (data) {
          var filtered = data.results.where((v) => v.adult == false).toList();
          var toShow = filtered.length > 6 ? filtered.sublist(0, 6) : filtered;
          var sorted = filtered.toList()
            ..sort((a, b) => b.voteAverage!.compareTo(a.voteAverage!));
          var popular = sorted.length > 20 ? sorted.sublist(0, 20) : sorted;
          final baseUrl = '${widget.images.baseUrl}/original';
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: [
              const SizedBox(height: 16.0),
              Text('Now playing', style: textTheme.titleMedium),
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
                              baseUrl: baseUrl,
                              path: toShow[i].posterPath!,
                              onPressed: () {},
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
              Text('Popular', style: textTheme.titleMedium),
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
                              baseUrl: baseUrl,
                              path: popular[i].posterPath!,
                              onPressed: () {},
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
    required this.onPressed,
  });

  final String path;
  final String baseUrl;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final src = '$baseUrl/$path';
    final colors = Theme.of(context).colorScheme;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          child: Image.network(src),
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
            onPressed: onPressed,
            icon: const Icon(Icons.favorite_border),
          ),
        )
      ],
    );
  }
}
