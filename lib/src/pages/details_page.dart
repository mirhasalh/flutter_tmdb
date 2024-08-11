import 'package:flutter/material.dart';

import '../models/movie.dart';

class DetailsPage extends StatelessWidget {
  static const routeName = '/details';

  const DetailsPage({super.key, required this.baseUrl, required this.movie});

  final String baseUrl;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final src = '$baseUrl/${movie.posterPath}';

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Image.network(src),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 12.0),
            child: Text(movie.originalTitle!, style: textTheme.titleLarge),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(movie.overview!),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}

class DetailsArgs {
  const DetailsArgs(this.baseUrl, this.movie);

  final String baseUrl;
  final Movie movie;
}
