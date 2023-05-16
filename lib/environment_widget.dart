library environment_widget;

import 'package:flutter/material.dart';

class Environment {
  final Color _bannerColor;
  final String _bannerTag;
  final BannerLocation _bannerLocation;
  final String? baseUrl;
  final bool _isRelease;

  Environment({
    Color bannerColor = Colors.lightBlue,
    String bannerTag = '',
    BannerLocation bannerLocation = BannerLocation.topEnd,
    this.baseUrl,
    bool isRelease = false,
  })  : _bannerColor = bannerColor,
        _bannerTag = bannerTag,
        _bannerLocation = bannerLocation,
        _isRelease = isRelease;

  bool get isReleaseMode => _isRelease;

  Widget widget({
    required Widget appWidget,
  }) {
    if (_isRelease) {
      return appWidget;
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        location: _bannerLocation,
        color: _bannerColor,
        message: _bannerTag,
        textStyle: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        child: appWidget,
      ),
    );
  }
}
