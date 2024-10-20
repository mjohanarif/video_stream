import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_stream/module/video/video.dart';

part 'get_video_event.dart';
part 'get_video_state.dart';
part 'get_video_bloc.freezed.dart';

class GetVideoBloc extends Bloc<GetVideoEvent, GetVideoState> {
  final GetVideoListUsecase getVideoListUsecase;
  GetVideoBloc(this.getVideoListUsecase) : super(const _Initial()) {
    on<_GetVideoList>((event, emit) async {
      final result = await getVideoListUsecase(null);

      result.fold(
        (l) => emit(_error(l.message)),
        (r) => emit(_Loaded(r.results)),
      );
    });
  }
}
