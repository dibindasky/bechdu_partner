import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

@injectable
class InvoiceMaker {
  Future<File> bufferSaver(String buffer) async {
    try {
      final Uint8List pdfBuffer = stringToUint8List(buffer);
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/${const Uuid().v4()}.pdf';
      log('got path $filePath');
      return await savePdfBufferToFile(pdfBuffer, filePath);
    } catch (e) {
      rethrow;
    }
  }

  Uint8List stringToUint8List(String input) {
    log('stringToUint8List');
    return Uint8List.fromList(utf8.encode(input));
  }

  Future<File> savePdfBufferToFile(Uint8List pdfBuffer, String filePath) async {
    final file = File(filePath);
    log('savePdfBufferToFile');
    return await file.writeAsBytes(pdfBuffer);
  }
}
