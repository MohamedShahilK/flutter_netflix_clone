import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:netflix_clone/domain/new_and_hot/model/comingsoon/comingsoon.dart';
import 'package:netflix_clone/domain/new_and_hot/model/comingsoon/comingsoonvideoresp/comingsoonvideoresp.dart';
import 'package:netflix_clone/domain/new_and_hot/model/everyones/everyones.dart';

abstract class HotAndNewServices {
  Future<Either<MainFailures, ComingsoonResp>> getComingSoonApi();
  Future<Either<MainFailures, ComingSoonVideoResp>> getComingSoonVideosApi({
    required String movieID,
  });
  Future<Either<MainFailures, EveryonesResp>> getEveryOnesApi();
}
