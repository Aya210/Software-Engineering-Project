import 'package:flutter/material.dart';
import 'package:software_engineering/Screens/Loading.dart';
import 'package:software_engineering/Screens/PaymentInfo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFFD9D9D9)),
        scaffoldBackgroundColor: const Color(0xFF5A4C90)
      ),
      home: const Loading()
    );
  }
}

