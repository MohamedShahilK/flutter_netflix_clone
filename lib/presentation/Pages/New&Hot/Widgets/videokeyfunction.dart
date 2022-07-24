import 'package:dio/dio.dart';
import 'package:netflix_clone/core/api/api_end_point.dart';
import 'package:netflix_clone/domain/new_and_hot/model/comingsoon/comingsoonvideoresp/comingsoonvideoresp.dart';

Future<String> videoKeyFunc(String movieID) async {
  final response = await Dio(BaseOptions())
      .get(ApiKeyEndPoint.comingsoonVideos.replaceAll('{movieID}', movieID));

  final result = ComingSoonVideoData.fromJson(response.data['results'][0]);
  print(result.videoKey);

  return result.videoKey.toString();

  // throw Exception();
}
