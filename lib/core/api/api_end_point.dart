import 'package:netflix_clone/core/api/baseurl.dart';
import 'package:netflix_clone/infrastructure/apikey.dart';

class ApiKeyEndPoint {
  // static String downloads = "$BaseUrls.mainBaseUrl/trending/all/day?api_key=$apiKey";
  static String downloads = "$mainBaseUrl/trending/all/day?api_key=$apiKey";
  static String searchIdle = "$mainBaseUrl/discover/movie?api_key=$apiKey";
  //query will provided along with event
  static String searchResult = "$mainBaseUrl/search/movie?api_key=$apiKey";
  static String comingsoon = "$mainBaseUrl/movie/upcoming?api_key=$apiKey";
  // static String comingsoonVideos =
  //     "$mainBaseUrl/movie/778855/videos?api_key=$apiKey";
  static String comingsoonVideos =
      "$mainBaseUrl/movie/{movieID}/videos?api_key=$apiKey";
  // static String everyones =
  //     "$mainBaseUrl/discover/tv?api_key=$apiKey&with_networks=213#";

  static String everyones = "$mainBaseUrl/trending/all/day?api_key=$apiKey";
}
