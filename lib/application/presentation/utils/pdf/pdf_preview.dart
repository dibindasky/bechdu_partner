import 'dart:convert';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/feature/pdf_buffer.dart';
import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class ScreenPdfPreview extends StatelessWidget {
  const ScreenPdfPreview({super.key, required this.argument});

  final PreviewArguments argument;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invoice'),
        actions: [
          GestureDetector(
            onTap: () {
              InvoiceMaker().sharePdf(argument.base64, argument.fileName,
                  'argument.fileName invoice');
            },
            child: const Icon(Icons.share_outlined),
          ),
          kWidth20
        ],
      ),
      body: PdfViewer.openData(base64Decode(argument.base64),
          onError: (_) => const Center(
                child: Text('Could not load invoice please try again'),
              )),
    );
  }
}

class PreviewArguments {
  String base64;
  String fileName;
  PreviewArguments({required this.base64, required this.fileName});
}
