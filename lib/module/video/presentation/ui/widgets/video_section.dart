import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import 'package:video_stream/shared/shared.dart';

class VideoSection extends StatefulWidget {
  final String url;
  final VoidCallback? onNextVideo;
  final VoidCallback? onPreviousVideo;

  const VideoSection({
    super.key,
    required this.url,
    this.onNextVideo,
    this.onPreviousVideo,
  });

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    )..initialize().then((_) => setState(() {}));
  }

  @override
  void didUpdateWidget(covariant VideoSection oldWidget) {
    _controller?.dispose();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    )..initialize().then((_) => setState(() {}));
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_controller != null) ...[
          Stack(
            children: [
              AspectRatio(
                aspectRatio: _controller!.value.aspectRatio,
                child: VideoPlayer(_controller!),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: widget.onPreviousVideo,
                        child: Icon(
                          Icons.skip_previous,
                          size: 32.h,
                          color: AppColors.primary,
                        ),
                      ),
                      AppSpacing.h8(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _controller!.value.isPlaying
                                ? _controller!.pause()
                                : _controller!.play();
                          });
                        },
                        child: Icon(
                          _controller!.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: 32.h,
                          color: AppColors.primary,
                        ),
                      ),
                      AppSpacing.h8(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _controller!.pause();
                            _controller!.seekTo(Duration.zero);
                          });
                        },
                        child: Icon(
                          Icons.stop,
                          size: 32.h,
                          color: AppColors.primary,
                        ),
                      ),
                      AppSpacing.h8(),
                      GestureDetector(
                        onTap: widget.onNextVideo,
                        child: Icon(
                          Icons.skip_next,
                          size: 32.h,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
