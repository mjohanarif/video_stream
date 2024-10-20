part of 'get_video_bloc.dart';

@freezed
class GetVideoEvent with _$GetVideoEvent {
  const factory GetVideoEvent.started() = _Started;
  const factory GetVideoEvent.getVideoList() = _GetVideoList;
}
