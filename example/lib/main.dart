import 'package:environment_widget/environment_widget.dart';
import 'package:flutter/material.dart';

Future<Widget> run({
  required Environment environment,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  //Load and check all you need

  return Application(
    environment: environment,
  );
}

class Application extends StatelessWidget {
  final Environment environment;

  const Application({
    required this.environment,
  });

  @override
  Widget build(BuildContext context) {
    return this.environment.widget(
          appWidget: MaterialApp(
            theme: this.environment.lightThemeData,
            darkTheme: this.environment.darkThemeData,
            debugShowCheckedModeBanner: false,
            home: Home(
              baseURL: this.environment.baseUrl,
            ),
          ),
        );
  }
}

class Home extends StatelessWidget {
  final String? baseURL;

  const Home({
    this.baseURL,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Environment Widget'),
      ),
      body: Center(
        child: Text(
          this.baseURL ?? '',
        ),
      ),
    );
  }
}
