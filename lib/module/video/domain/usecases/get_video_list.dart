import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:video_stream/module/video/domain/domain.dart';
import 'package:video_stream/shared/shared.dart';

class GetVideoListUsecase
    implements UseCaseFuture<Failure, VideoResponse, void> {
  final VideoRepository repository;

  GetVideoListUsecase({required this.repository});

  @override
  FutureOr<Either<Failure, VideoResponse>> call(void params) {
    return repository.getVideoList();
  }
}
