import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart' show kPosterWidth;
import '../models/config_images.dart';
import '../providers/providers.dart';
import '../providers/theme_provider.dart';
import '../shared/poster.dart';
import 'details_page.dart' show DetailsArgs;
import 'language_settings_page.dart' show LanguageArgs;
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
    final l10n = AppLocalizations.of(context)!;
    final nav = Navigator.of(context);
    final textTheme = Theme.of(context).textTheme;
    var account = ref.watch(accountProvider);
    var nowPlaying = ref.watch(nowPlayingProvider);
    final base = '${widget.images.secureBaseUrl}';
    final langCode = '${Localizations.localeOf(context)}';
    final brightness = Theme.of(context).brightness.name;
    final style =
        textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis);

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
        actions: [
          IconButton(
            onPressed: () => _showThemeSettings(),
            icon:
                Icon(brightness == 'dark' ? Icons.dark_mode : Icons.light_mode),
          ),
          IconButton(
            onPressed: () => nav.pushNamed(
              '/language-settings',
              arguments: LanguageArgs(langCode: langCode),
            ),
            icon: const Icon(Icons.language),
          ),
        ],
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
                l10n.nowPlaying,
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
                        width: kPosterWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Poster(
                              tag: 'toShow-$i-${toShow[i].id!}',
                              baseUrl: base,
                              path: toShow[i].posterPath!,
                              onOptions: () {},
                              onPoster: () => nav.pushNamed(
                                '/details',
                                arguments: DetailsArgs(
                                  'toShow-$i-${toShow[i].id!}',
                                  base,
                                  toShow[i],
                                ),
                              ),
                            ),
                            const SizedBox(height: 4.0),
                            Text(toShow[i].originalTitle!, style: style),
                            Text.rich(
                              TextSpan(
                                text: toShow[i].voteAverage!.toStringAsFixed(1),
                                style: textTheme.titleMedium,
                                children: [
                                  TextSpan(
                                    text: ' ${l10n.rating}',
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
                l10n.popular,
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
                        width: kPosterWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Poster(
                              tag: 'popular-$i-${popular[i].id!}',
                              baseUrl: base,
                              path: popular[i].posterPath!,
                              onOptions: () {},
                              onPoster: () => nav.pushNamed(
                                '/details',
                                arguments: DetailsArgs(
                                  'popular-$i-${popular[i].id!}',
                                  base,
                                  popular[i],
                                ),
                              ),
                            ),
                            const SizedBox(height: 4.0),
                            Text(popular[i].originalTitle!, style: style),
                            Text.rich(
                              TextSpan(
                                text:
                                    popular[i].voteAverage!.toStringAsFixed(1),
                                style: textTheme.titleMedium,
                                children: [
                                  TextSpan(
                                    text: ' ${l10n.rating}',
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

  void _showThemeSettings() {
    final themeMode = ref.watch(themeProvider).themeMode;
    final nav = Navigator.of(context);

    showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const _DragHandler(),
          ...ThemeMode.values.map(
            (v) => RadioListTile(
              value: v,
              groupValue: themeMode,
              onChanged: (v) {
                ref.read(themeProvider).setThemeMode(v!);
                nav.pop();
              },
              title: Text(translate(v.name)),
            ),
          ),
        ],
      ),
    );
  }

  String translate(String name) {
    final l10n = AppLocalizations.of(context)!;

    switch (name) {
      case 'system':
        return l10n.system;
      case 'light':
        return l10n.light;
      case 'dark':
        return l10n.dark;
      default:
        return 'n/a';
    }
  }
}

class HomeArgs {
  const HomeArgs(this.images);

  final ConfigImages images;
}

class _DragHandler extends StatelessWidget {
  const _DragHandler();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 4.0,
            width: 60.0,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(9.0),
            ),
          ),
        ],
      ),
    );
  }
}
