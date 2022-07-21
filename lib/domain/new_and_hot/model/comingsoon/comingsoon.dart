import 'package:json_annotation/json_annotation.dart';

part 'comingsoon.g.dart';

@JsonSerializable()
class ComingsoonResp {
  List<ComingSoonResultData> results;

  ComingsoonResp({this.results = const []});

  factory ComingsoonResp.fromJson(Map<String, dynamic> json) {
    return _$ComingsoonRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingsoonRespToJson(this);
}

@JsonSerializable()
class ComingSoonResultData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;

  ComingSoonResultData({
    this.backdropPath,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
  });

  factory ComingSoonResultData.fromJson(Map<String, dynamic> json) {
    return _$ComingSoonResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingSoonResultDataToJson(this);
}
