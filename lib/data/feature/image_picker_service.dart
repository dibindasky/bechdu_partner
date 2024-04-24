import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/image/image_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

@injectable
class ImagePickerService {
  Future<Either<Failure, ImageModel>> pickImage({bool camera = true}) async {
    try {
      final ImagePicker imagePicker = ImagePicker();
      final pickedImage = await imagePicker.pickImage(
          source: camera ? ImageSource.camera : ImageSource.gallery);
      if (pickedImage != null) {
        final directory = await getTemporaryDirectory();
        final compressedFilePath = '${directory.path}/${const Uuid().v4()}.jpg';
        File? compressedFile;
        int quality = 90;
        while (compressedFile == null ||
            compressedFile.lengthSync() > 300 * 1024) {
          compressedFile = await testCompressAndGetFile(
              File(pickedImage.path), compressedFilePath, quality);
          quality -= 10;
          if (quality < 0) {
            return Left(Failure());
          }
        }
        final bytes = await compressedFile.readAsBytes();
        String base64 = base64Encode(bytes);
        final extension = pickedImage.path.split(".").last;
        base64 = 'data:image/$extension;base64,$base64';
        return Right(
            ImageModel(base64Image: base64, fileImage: File(pickedImage.path)));
      } else {
        return Left(Failure());
      }
    } catch (e) {
      log('exception => $e');
      return Left(Failure());
    }
  }

  Future<File?> testCompressAndGetFile(
      File file, String targetPath, int quality) async {
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: quality,
      // rotate: 180,
    );
    if (result != null) {
      return File(result.path);
    }
    return null;
  }
}
