// import 'dart:developer';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/api/api_end_point.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:netflix_clone/domain/downloads/downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/model/downloads.dart';

// @Injectable(as: DownloadsRepo)
//or
// @Singleton(as: DownloadsRepo)
@LazySingleton(as: DownloadsRepo)
class DownloadsImpl implements DownloadsRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadPageApi() async {
    try {
      final _response = await Dio(BaseOptions()).get(ApiKeyEndPoint.downloads);
      // log(_response.data['results'].toString());
      if (_response.statusCode == 200 || _response.statusCode == 201) {
        final _result = (_response.data['results'] as List)
            .map(
              (e) => Downloads.fromJson(e),
            )
            .toList();

        // final List<Downloads> _result = [];
        // for (final raw in _response.data['results']) {
        //   // result.add(Downloads.fromJson(raw as Map<String, dynamic>));
        //   result.add(Downloads.fromJson(raw));
        // }

        return Right(_result);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } on DioError catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailures());
    }
    // on DioError catch (e) {
    //   log(e.response.toString());
    //   return const Left(MainFailures.clientFailures());
    // }
  }
}
