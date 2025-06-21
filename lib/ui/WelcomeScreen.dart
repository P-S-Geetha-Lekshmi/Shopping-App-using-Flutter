import 'package:flutter/material.dart';
import 'package:geetha_myntraa/ui/login.dart';
import 'package:geetha_myntraa/ui/register.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    // Responsive values
    final double padding = width * 0.08;
    final double titleFont = width * 0.07;
    final double subtitleFont = width * 0.04;
    final double buttonHeight = height * 0.065;
    final double buttonFontSize = width * 0.045;
    final double imageHeight = height * 0.5;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/backgroundg.jpg',
                width: width * 0.5,
                height: imageHeight,
                fit: BoxFit.cover,
              ),
              Text(
                "Start Your Shopping Journey Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: titleFont,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: subtitleFont,
                ),
                textAlign: TextAlign.center,
              ),
              Column(
                children: [
                  _button(context, "Log In", const LoginScreen(), filled: false, height: buttonHeight, fontSize: buttonFontSize),
                  SizedBox(height: height * 0.02),
                  _button(context, "Sign Up", const SignUpScreen(), filled: true, height: buttonHeight, fontSize: buttonFontSize),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _button(BuildContext ctx, String text, Widget page,
      {bool filled = true, required double height, required double fontSize}) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: OutlinedButton(
        onPressed: () => Navigator.push(ctx, MaterialPageRoute(builder: (_) => page)),
        style: OutlinedButton.styleFrom(
          backgroundColor: filled ? Colors.orange : Colors.transparent,
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.orange),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize),
        ),
      ),
    );
  }
}
