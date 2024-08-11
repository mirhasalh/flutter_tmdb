import 'dart:io';
import 'dart:typed_data';

import 'package:gal/gal.dart';
import 'package:http/http.dart' show get;
import 'package:flutter/material.dart';
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
                if (v == 'success') {
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
    required Function(String) onSaved,
  }) async {
    String url = '$baseUrl/original$posterPath';
    try {
      final res = await get(Uri.parse(url));
      final data = Uint8List.fromList(res.bodyBytes);
      final imagePath = '${Directory.systemTemp.path}$posterPath';
      final file = File(imagePath);
      await file.writeAsBytes(data);
      await Gal.putImage(file.path);
      onSaved('success');
    } catch (e) {
      onSaved('$e');
    }
  }
}

class PosterArgs {
  const PosterArgs(this.tag, this.baseUrl, this.path);

  final String tag;
  final String baseUrl;
  final String path;
}
