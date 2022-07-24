import 'package:json_annotation/json_annotation.dart';

part 'comingsoonvideoresp.g.dart';

@JsonSerializable()
class ComingSoonVideoResp {
  @JsonKey(name: 'results')
  List<ComingSoonVideoData> results;

  ComingSoonVideoResp({this.results = const []});

  factory ComingSoonVideoResp.fromJson(Map<String, dynamic> json) {
    return _$ComingSoonVideoRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingSoonVideoRespToJson(this);
}

@JsonSerializable()
class ComingSoonVideoData {
  @JsonKey(name: 'key')
  String? videoKey;

  ComingSoonVideoData({this.videoKey});

  factory ComingSoonVideoData.fromJson(Map<String, dynamic> json) {
    return _$ComingSoonVideoDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingSoonVideoDataToJson(this);
}
