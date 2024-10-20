import 'package:dartz/dartz.dart';
import 'package:video_stream/module/video/video.dart';
import 'package:video_stream/shared/shared.dart';

class VideoRepositoryImpl implements VideoRepository {
  final VideoRemoteDataSource remoteDataSource;

  VideoRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, VideoResponse>> getVideoList() async {
    try {
      final result = await remoteDataSource.getVideoList();

      return Right(result);
    } on ServerException catch (exception) {
      return Left(ServerFailure(exception.message));
    }
  }
}
