import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:netflix_clone/domain/downloads/model/downloads.dart';

abstract class DownloadsRepo {
  Future<Either<MainFailures, List<Downloads>>> getDownloadPageApi();
}
