// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoModelImpl _$$VideoModelImplFromJson(Map<String, dynamic> json) =>
    _$VideoModelImpl(
      trackName: json['trackName'] as String,
      previewUrl: json['previewUrl'] as String?,
      releaseDate: DateTime.parse(json['releaseDate'] as String),
      trackTimeMillis: (json['trackTimeMillis'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$VideoModelImplToJson(_$VideoModelImpl instance) =>
    <String, dynamic>{
      'trackName': instance.trackName,
      'previewUrl': instance.previewUrl,
      'releaseDate': instance.releaseDate.toIso8601String(),
      'trackTimeMillis': instance.trackTimeMillis,
    };
