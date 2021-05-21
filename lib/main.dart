import 'package:flutter/material.dart';

import 'src/infra/di/dependency_injection.dart';
import 'src/ui/pages/login/login_screen.dart';

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
      ),
      home: LoginScreen(),
    );
  }
}
