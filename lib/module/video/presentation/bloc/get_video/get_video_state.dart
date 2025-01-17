part of 'get_video_bloc.dart';

@freezed
class GetVideoState with _$GetVideoState {
  const factory GetVideoState.initial() = _Initial;
  const factory GetVideoState.loading() = _Loading;
  const factory GetVideoState.loaded(List<VideoModel> result) = _Loaded;
  const factory GetVideoState.error(String message) = _error;
}
