import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart' show kPosterWidth;
import '../models/movie.dart';
import '../providers/providers.dart';
import '../shared/poster.dart';
import 'poster_page.dart' show PosterArgs;

class DetailsPage extends StatelessWidget {
  static const routeName = '/details';

  const DetailsPage({
    super.key,
    required this.tag,
    required this.baseUrl,
    required this.movie,
  });

  final String tag;
  final String baseUrl;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final src = '$baseUrl/original/${movie.posterPath}';
    final nav = Navigator.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            text: movie.voteAverage!.toStringAsFixed(1),
            style: textTheme.titleLarge,
            children: [
              TextSpan(
                text: ' popularity',
                style: textTheme.titleSmall,
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          )
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () => nav.pushNamed(
              '/poster',
              arguments: PosterArgs(tag, baseUrl, movie.posterPath!),
            ),
            child: Hero(
              tag: tag,
              child: Image.network(src),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 12.0),
            child: Text(movie.originalTitle!, style: textTheme.titleLarge),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(movie.overview!),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 12.0),
            child: Text(
              'Similar',
              style:
                  textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          _SimilarSection(baseUrl: baseUrl, id: movie.id!),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}

class DetailsArgs {
  const DetailsArgs(this.tag, this.baseUrl, this.movie);

  final String tag;
  final String baseUrl;
  final Movie movie;
}

class _SimilarSection extends ConsumerWidget {
  const _SimilarSection({required this.baseUrl, required this.id});

  final String baseUrl;
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nav = Navigator.of(context);
    final textTheme = Theme.of(context).textTheme;
    var similar = ref.watch(similarProvider(id: id));
    final style =
        textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis);

    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16.0),
      scrollDirection: Axis.horizontal,
      child: similar.when(
        data: (data) => data.results.isEmpty
            ? const Text('No data')
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  data.results.length,
                  (int i) => data.results[i].posterPath != null
                      ? Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SizedBox(
                            width: kPosterWidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Poster(
                                  tag: '$i-${data.results[i].id!}',
                                  baseUrl: baseUrl,
                                  path: data.results[i].posterPath!,
                                  onOptions: () {},
                                  onPoster: () => nav.pushNamed(
                                    '/details',
                                    arguments: DetailsArgs(
                                      '$i-${data.results[i].id!}',
                                      baseUrl,
                                      data.results[i],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  data.results[i].originalTitle!,
                                  style: style,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: data.results[i].voteAverage!
                                        .toStringAsFixed(1),
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
                        )
                      : const SizedBox.shrink(),
                ),
              ),
        error: (err, _) => Text('$err'),
        loading: () => const SizedBox.shrink(),
      ),
    );
  }
}
