// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comingsoonvideoresp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComingSoonVideoResp _$ComingSoonVideoRespFromJson(Map<String, dynamic> json) =>
    ComingSoonVideoResp(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  ComingSoonVideoData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ComingSoonVideoRespToJson(
        ComingSoonVideoResp instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

ComingSoonVideoData _$ComingSoonVideoDataFromJson(Map<String, dynamic> json) =>
    ComingSoonVideoData(
      videoKey: json['key'] as String?,
    );

Map<String, dynamic> _$ComingSoonVideoDataToJson(
        ComingSoonVideoData instance) =>
    <String, dynamic>{
      'key': instance.videoKey,
    };
