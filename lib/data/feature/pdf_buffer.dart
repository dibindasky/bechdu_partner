import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_saver/file_saver.dart';
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

//   Future<void> saveToStorage(String base64Pdf, String fileName) async {
//   final pdfBytes = base64Decode(base64Pdf);
//   final status = await Permission.storage.request();
//   if (!status.isGranted) {
//     throw Exception('Storage permission denied');
//   }
//   try {
//     await FileSaver.saveFile(
//       '$fileName.pdf',
//       pdfBytes,
//       'application/pdf', 
//       DirectoryPaths.downloads,
//     );
//     print('PDF saved successfully!');
//   } catch (error) {
//     print('Error saving PDF: $error');
//   }
// }
}
