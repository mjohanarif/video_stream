// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoResponseImpl _$$VideoResponseImplFromJson(Map<String, dynamic> json) =>
    _$VideoResponseImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      resultCount: (json['resultCount'] as num).toInt(),
    );

Map<String, dynamic> _$$VideoResponseImplToJson(_$VideoResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'resultCount': instance.resultCount,
    };
