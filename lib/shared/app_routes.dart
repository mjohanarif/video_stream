import 'package:flutter/material.dart';
import 'package:video_stream/module/video/video.dart';

class AppRoutes {
  static const String main = '/';
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return _materialRoute(
          const VideoListPage(),
        );

      default:
        return _materialRoute(
          const VideoListPage(),
        );
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => view,
    );
  }
}
