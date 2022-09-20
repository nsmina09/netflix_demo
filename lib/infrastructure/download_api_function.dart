import 'dart:math';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/apiEndpoints.dart';
import 'package:netflix_app/model_class/download_models/downloadmodel.dart';
import 'package:netflix_app/domain/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_app/services/download_service.dart';

@LazySingleton(as: DownloadServices)
class DownloadApi implements DownloadServices {
  @override
  Future<Either<MainFailures, List<DownloadModel>>> getDownloadImages() async {
    try {
      final Response response = await Dio().get(ApiEndPoints.download);
      if (response.statusCode == 200 || response.statusCode == 201) {
       
        final list = (response.data['results'] as List)
            .map((e) => DownloadModel.fromJson(e))
            .toList();
            print('list is $list');
        return Right(list);
      } else {
        return const Left(MainFailures.clientFailue());
      }
    }
     catch (e) {
      return const Left(MainFailures.serverFailure()
      );
    }
    
  }
}
