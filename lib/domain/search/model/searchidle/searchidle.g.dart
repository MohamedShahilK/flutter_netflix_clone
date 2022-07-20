// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchidle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchIdle _$SearchIdleFromJson(Map<String, dynamic> json) => SearchIdle(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchIdleData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchIdleToJson(SearchIdle instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

SearchIdleData _$SearchIdleDataFromJson(Map<String, dynamic> json) =>
    SearchIdleData(
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$SearchIdleDataToJson(SearchIdleData instance) =>
    <String, dynamic>{
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
