import 'dart:io';

import 'package:flutter/material.dart';

class ImagePreview extends StatelessWidget {
  final String image;

  const ImagePreview({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Preview'),
      ),
      body: Center(
        child: InteractiveViewer(
          scaleEnabled: true,
          child: Image.file(File(image)),
        ),
      ),
    );
  }
}
