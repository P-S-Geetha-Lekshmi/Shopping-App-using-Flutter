import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:geetha_myntraa/ui/WelcomeScreen.dart';
import 'package:geetha_myntraa/ui/register.dart' show Register;
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(), // Fixed name
    );
  }
}

