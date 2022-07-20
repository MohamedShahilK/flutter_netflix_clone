import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:netflix_clone/domain/search/model/search_response/search_response.dart';
import 'package:netflix_clone/domain/search/model/searchidle/searchidle.dart';

abstract class SearchServices {
  Future<Either<MainFailures, SearchIdle>> getSearchIdleApi();
  Future<Either<MainFailures, SearchResponse>> getSearchResultApi({
    required String movieName,
  });
}
