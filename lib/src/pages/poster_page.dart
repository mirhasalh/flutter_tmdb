import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PosterPage extends StatelessWidget {
  static const routeName = '/poster';

  const PosterPage({super.key, required this.baseUrl, required this.path});

  final String baseUrl;
  final String path;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final url = '$baseUrl/original$path';

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () => _onSaveImageToDevice(),
            icon: const Icon(Icons.save_alt),
          )
        ],
      ),
      body: PhotoView(
        heroAttributes: PhotoViewHeroAttributes(tag: path),
        backgroundDecoration: BoxDecoration(color: colors.surface),
        imageProvider: NetworkImage(url),
      ),
    );
  }

  void _onSaveImageToDevice() {}
}

class PosterArgs {
  const PosterArgs(this.baseUrl, this.path);

  final String baseUrl;
  final String path;
}
