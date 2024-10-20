import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream/module/video/video.dart';
import 'package:video_stream/shared/shared.dart';

class VideoCard extends StatelessWidget {
  final VoidCallback? onTap;
  final VideoModel video;
  final bool isSelected;

  const VideoCard({
    super.key,
    this.onTap,
    required this.video,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyBackground),
          color: isSelected ? AppColors.greyBackground : Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.play_circle,
              color: AppColors.primary,
              size: 32.sp,
            ),
            AppSpacing.h8(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    video.trackName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  const AppSpacing(v: 4),
                  const Text('Video'),
                ],
              ),
            ),
            AppSpacing.h8(),
            Text('${((video.trackTimeMillis ?? 0) / 1000) ~/ 60} min'),
          ],
        ),
      ),
    );
  }
}
