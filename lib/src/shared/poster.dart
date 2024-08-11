import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Poster extends StatelessWidget {
  const Poster({
    super.key,
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
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: src,
            ),
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
