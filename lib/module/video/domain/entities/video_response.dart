import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_stream/module/video/domain/entities/video_model.dart';

part 'video_response.freezed.dart';
part 'video_response.g.dart';

@freezed
class VideoResponse with _$VideoResponse {
  const factory VideoResponse({
    required List<VideoModel> results,
    required int resultCount,
  }) = _VideoResponse;

  factory VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);
}
