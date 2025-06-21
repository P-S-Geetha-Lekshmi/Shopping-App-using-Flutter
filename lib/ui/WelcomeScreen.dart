import 'package:flutter/material.dart';
import 'package:geetha_myntraa/ui/login.dart';
import 'package:geetha_myntraa/ui/register.dart';

import '../widgets/constant.dart';
import '../widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

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
                AppTexts.homeTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: titleFont,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                AppTexts.desc,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: subtitleFont,
                ),
                textAlign: TextAlign.center,
              ),
              Column(
                children: [
                  CustomButton(
                    text: AppTexts.login,
                    page: const LoginScreen(),
                    filled: false,
                    height: buttonHeight,
                    fontSize: buttonFontSize,
                  ),
                  SizedBox(height: height * 0.02),
                  CustomButton(
                    text: AppTexts.signup,
                    page: const SignUpScreen(),
                    filled: true,
                    height: buttonHeight,
                    fontSize: buttonFontSize,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
