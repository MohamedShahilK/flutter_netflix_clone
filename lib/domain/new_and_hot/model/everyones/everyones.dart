import 'package:json_annotation/json_annotation.dart';
part 'everyones.g.dart';

@JsonSerializable()
class EveryonesResp {
  @JsonKey(name: 'results')
  List<EveryonesResultData> results;

  EveryonesResp({this.results = const []});

  factory EveryonesResp.fromJson(Map<String, dynamic> json) {
    return _$EveryonesRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryonesRespToJson(this);
}

@JsonSerializable()
class EveryonesResultData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  EveryonesResultData({
    this.backdropPath,
    this.originalName,
    this.overview,
    this.posterPath,
  });

  factory EveryonesResultData.fromJson(Map<String, dynamic> json) {
    return _$EveryonesResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryonesResultDataToJson(this);
}
