import 'dart:typed_data';

import 'package:http/http.dart' show get;
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:photo_view/photo_view.dart';

class PosterPage extends StatelessWidget {
  static const routeName = '/poster';

  const PosterPage({
    super.key,
    required this.tag,
    required this.baseUrl,
    required this.path,
  });

  final String tag;
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
            onPressed: () => _onSaveImage(
              baseUrl: baseUrl,
              posterPath: path,
              onSaved: (v) {
                final msg = ScaffoldMessenger.of(context);
                if (v != null) {
                  msg.showSnackBar(
                      const SnackBar(content: Text('Saved to gallery')));
                } else {
                  msg.showSnackBar(
                      const SnackBar(content: Text('Failed to save')));
                }
              },
            ),
            icon: const Icon(Icons.save_alt),
          )
        ],
      ),
      body: PhotoView(
        heroAttributes: PhotoViewHeroAttributes(tag: tag),
        backgroundDecoration: BoxDecoration(color: colors.surface),
        imageProvider: NetworkImage(url),
      ),
    );
  }

  Future<void> _onSaveImage({
    required String baseUrl,
    required String posterPath,
    required Function(dynamic) onSaved,
  }) async {
    String url = '$baseUrl/original$posterPath';

    final res = await get(Uri.parse(url));

    final data = await ImageGallerySaver.saveImage(
      Uint8List.fromList(res.bodyBytes),
      quality: 60,
      name: posterPath.substring(1),
    );

    onSaved(data);
  }
}

class PosterArgs {
  const PosterArgs(this.tag, this.baseUrl, this.path);

  final String tag;
  final String baseUrl;
  final String path;
}
