library environment_widget;

import 'package:flutter/material.dart';

class Environment {
  final Color _bannerColor;
  final String? _bannerTag;
  final BannerLocation? _bannerLocation;
  final String? baseUrl;
  final ThemeData? lightThemeData;
  final ThemeData? darkThemeData;

  Environment({
    Color bannerColor = Colors.lightBlue,
    String? bannerTag,
    BannerLocation? bannerLocation,
    this.baseUrl,
    this.lightThemeData,
    this.darkThemeData,
  })  : _bannerColor = bannerColor,
        _bannerTag = bannerTag,
        _bannerLocation = bannerLocation;

  bool get isReleaseMode => _bannerLocation == null && _bannerTag == null;

  Widget widget({
    required Widget appWidget,
  }) {
    if (this.isReleaseMode) {
      return appWidget;
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        location: _bannerLocation ?? BannerLocation.topEnd,
        color: _bannerColor,
        message: _bannerTag ?? '',
        textStyle: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        child: appWidget,
      ),
    );
  }
}
