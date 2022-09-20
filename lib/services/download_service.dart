import 'package:netflix_app/domain/failures/main_failure.dart';
import 'package:netflix_app/model_class/download_models/downloadmodel.dart';
import 'package:dartz/dartz.dart';

abstract class DownloadServices{
  Future<Either<MainFailures,List<DownloadModel>>> getDownloadImages();
}