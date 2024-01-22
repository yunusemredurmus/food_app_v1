import 'package:flutter/material.dart';
import 'package:food_app_v1/screens/home_screen.dart';
import 'package:food_app_v1/screens/login_screen.dart';
import 'package:food_app_v1/screens/seconscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const LoginScreen(),
      },
    );
  }
}
