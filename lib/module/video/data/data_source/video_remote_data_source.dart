import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:video_stream/module/video/video.dart';
import 'package:video_stream/shared/shared.dart';

abstract class VideoRemoteDataSource {
  Future<VideoResponse> getVideoList();
}

class VideoRemoteDataSourceImpl implements VideoRemoteDataSource {
  final Dio client;

  VideoRemoteDataSourceImpl({required this.client});

  @override
  Future<VideoResponse> getVideoList() async {
    try {
      final response = await client.get('');

      return VideoResponse.fromJson(jsonDecode(response.data));
    } on DioException catch (exception) {
      throw ServerException(
        message: exception.response != null
            ? 'Error ${exception.response!.statusCode}: ${exception.response!.statusMessage}'
            : exception.message ?? 'Server Error',
      );
    }
  }
}
