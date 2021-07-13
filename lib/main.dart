import 'package:chat/pages/splash_screen.dart';
import 'package:chat/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: backgroundColor,
      ),
      home: SplashScreen(),
    );
  }
}
