import 'package:flutter/material.dart';
import 'package:nithinflutter/pages/onboarding1.dart';
import 'package:nithinflutter/pages/onboarding2.dart';
import 'package:nithinflutter/pages/onboarding3.dart';
import 'package:nithinflutter/pages/practice.dart';
import 'package:nithinflutter/pages/login_page.dart';
import 'package:nithinflutter/widgets/back.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboarding1(),
    );
  }
}
