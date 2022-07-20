import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/api/api_end_point.dart';
import 'package:netflix_clone/domain/search/model/search_response/search_response.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/search/model/search_services.dart';
import 'package:netflix_clone/domain/search/model/searchidle/searchidle.dart';

@LazySingleton(as: SearchServices)
class SearchImpl implements SearchServices {
  @override
  Future<Either<MainFailures, SearchIdle>> getSearchIdleApi() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiKeyEndPoint.searchIdle);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchIdle.fromJson(response.data);
        return Right(result);
      } else {
        return left(const MainFailures.serverFailures());
      }
    } catch (_) {
      return left(const MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, SearchResponse>> getSearchResultApi(
      {required String movieName}) async {
    try {
      final response = await Dio(BaseOptions()).get(
        ApiKeyEndPoint.searchResult,
        queryParameters: {"query": movieName},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponse.fromJson(response.data);
        return Right(result);
      } else {
        return left(const MainFailures.serverFailures());
      }
    } catch (_) {
      return left(const MainFailures.clientFailures());
    }
  }
}
