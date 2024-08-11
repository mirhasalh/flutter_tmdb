import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
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
            onPressed: () => _onSaveImageToDevice(
              baseUrl: baseUrl,
              posterPath: path,
              onSaved: (v) {
                final msg = ScaffoldMessenger.of(context);
                if (v) {
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

  Future<void> _onSaveImageToDevice({
    required String baseUrl,
    required String posterPath,
    required Function(bool) onSaved,
  }) async {
    String path = '$baseUrl/original$posterPath';
    GallerySaver.saveImage(path).then((v) => onSaved(v!));
  }
}

class PosterArgs {
  const PosterArgs(this.tag, this.baseUrl, this.path);

  final String tag;
  final String baseUrl;
  final String path;
}
