// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comingsoon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComingsoonResp _$ComingsoonRespFromJson(Map<String, dynamic> json) =>
    ComingsoonResp(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  ComingSoonResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ComingsoonRespToJson(ComingsoonResp instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

ComingSoonResultData _$ComingSoonResultDataFromJson(
        Map<String, dynamic> json) =>
    ComingSoonResultData(
      id: json['id'] as int?,
      backdropPath: json['backdrop_path'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$ComingSoonResultDataToJson(
        ComingSoonResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
    };
