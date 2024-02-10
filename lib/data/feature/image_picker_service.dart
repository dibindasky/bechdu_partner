import 'dart:io';

import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService{
  Future<Either<Failure,File>> pickImage()async{
    final ImagePicker imagePicker=ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if(pickedImage!=null){
      return Right(File(pickedImage.path));
    }else{
      return Left(Failure());
    }
  }
}