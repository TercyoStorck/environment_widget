import 'package:environment_widget/environment_widget.dart';
import 'package:flutter/material.dart';

import '../main.dart' as application;

void main() async {
  final applicationWidget = await application.run(
    environment: Environment(
      baseUrl: 'https://foo.bar',
    ),
  );

  runApp(applicationWidget);
}