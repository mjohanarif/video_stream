import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:video_stream/module/video/video.dart';
import 'package:video_stream/shared/shared.dart';

class VideoListPage extends StatefulWidget {
  const VideoListPage({super.key});

  @override
  State<VideoListPage> createState() => _VideoListPageState();
}

class _VideoListPageState extends State<VideoListPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetVideoBloc, GetVideoState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$message '),
                  GestureDetector(
                    onTap: () => context
                        .read<GetVideoBloc>()
                        .add(const GetVideoEvent.getVideoList()),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Click to reload ',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.refresh,
                          color: AppColors.primary,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            loaded: (result) {
              return Column(
                children: [
                  VideoSection(
                    url: result[selectedIndex].previewUrl ?? '',
                    onPreviousVideo: () {
                      if (selectedIndex > 0) {
                        selectedIndex--;
                        setState(() {});
                      }
                    },
                    onNextVideo: () {
                      if (selectedIndex < result.length - 1) {
                        selectedIndex++;
                        setState(() {});
                      }
                    },
                  ),
                  const AppSpacing(v: 4),
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return VideoCard(
                          isSelected: selectedIndex == index,
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          video: result[index],
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const AppSpacing(v: 2),
                      itemCount: result.length,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
