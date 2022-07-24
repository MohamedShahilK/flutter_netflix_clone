import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/api/api_end_point.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/new_and_hot/hot_and_new_services.dart';
import 'package:netflix_clone/domain/new_and_hot/model/comingsoon/comingsoonvideoresp/comingsoonvideoresp.dart';
import 'package:netflix_clone/domain/new_and_hot/model/everyones/everyones.dart';
import 'package:netflix_clone/domain/new_and_hot/model/comingsoon/comingsoon.dart';

@LazySingleton(as: HotAndNewServices)
class HotAndNewServicesImpl implements HotAndNewServices {
  @override
  Future<Either<MainFailures, ComingsoonResp>> getComingSoonApi() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiKeyEndPoint.comingsoon);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ComingsoonResp.fromJson(response.data);
        // log(response.data.toString());
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, EveryonesResp>> getEveryOnesApi() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiKeyEndPoint.everyones);
      // print(response.data);
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = EveryonesResp.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, ComingSoonVideoResp>> getComingSoonVideosApi(
      {required String movieID}) async {
    try {
      final response = await Dio(BaseOptions()).get(
          ApiKeyEndPoint.comingsoonVideos.replaceAll('{movieID}', movieID));
      // print(response.data);
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ComingSoonVideoResp.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }
}
