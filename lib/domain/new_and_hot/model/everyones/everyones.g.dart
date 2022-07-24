// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everyones.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EveryonesResp _$EveryonesRespFromJson(Map<String, dynamic> json) =>
    EveryonesResp(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  EveryonesResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EveryonesRespToJson(EveryonesResp instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

EveryonesResultData _$EveryonesResultDataFromJson(Map<String, dynamic> json) =>
    EveryonesResultData(
      id: json['id'] as int?,
      backdropPath: json['backdrop_path'] as String?,
      originalName: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$EveryonesResultDataToJson(
        EveryonesResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'original_title': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
    };
