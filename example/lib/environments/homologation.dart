import 'package:environment_widget/environment_widget.dart';
import 'package:flutter/material.dart';

import '../main.dart' as application;

void main() async {
  final applicationWidget = await application.run(
    environment: Environment(
      bannerColor: Colors.purple,
      bannerTag: 'Hmg',
      baseUrl: 'https://hmg.foo.bar',
      bannerLocation: BannerLocation.bottomEnd,
      lightThemeData: ThemeData(),
      darkThemeData: ThemeData(),
    ),
  );

  runApp(applicationWidget);
}