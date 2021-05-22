import 'package:eco_xepa/src/ui/pages/tutorial/tutorial_screen.dart';
import 'package:flutter/material.dart';

import 'src/infra/di/dependency_injection.dart';

void main() {
  DependencyInjection.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Color(0xFF03b345),
      ),
      home: TutorialScreen(),
    );
  }
}
