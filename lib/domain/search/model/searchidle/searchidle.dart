import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/core/api/baseurl.dart';

part 'searchidle.g.dart';

@JsonSerializable()
class SearchIdle {
  @JsonKey(name: "results")
  List<SearchIdleData> results;

  SearchIdle({
    this.results = const [],
  });

  factory SearchIdle.fromJson(Map<String, dynamic> json) {
    return _$SearchIdleFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchIdleToJson(this);
}

@JsonSerializable()
class SearchIdleData {
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  String get posterPathwithFullUrl => '$imageBaseUrlw500$posterPath';

  SearchIdleData({
    this.originalTitle,
    this.posterPath,
  });

  factory SearchIdleData.fromJson(Map<String, dynamic> json) {
    return _$SearchIdleDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchIdleDataToJson(this);
}
