import 'package:dartz/dartz.dart';
import 'package:video_stream/module/video/domain/entities/video_response.dart';
import 'package:video_stream/shared/shared.dart';

abstract class VideoRepository {
  Future<Either<Failure, VideoResponse>> getVideoList();
}
