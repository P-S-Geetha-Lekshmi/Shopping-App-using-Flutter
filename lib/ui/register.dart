import 'package:flutter/material.dart';
import '../widgets/constant.dart';
import '../widgets/custom_input.dart';
import '../widgets/main_button.dart';
import '../widgets/social_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.06),
              Text(
                AppTexts.signup,
                style: TextStyle(
                  fontSize: width * 0.08,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.015),
              Text(
                AppTexts.jkk,
                style: TextStyle(
                  fontSize: width * 0.04,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: height * 0.04),
              CustomInput(hint: "Username", width: width),
              SizedBox(height: height * 0.015),
              CustomInput(hint: "Email", width: width),
              SizedBox(height: height * 0.015),
              CustomInput(hint: "Password", width: width, obscure: true),
              SizedBox(height: height * 0.03),
              MainButton(text: "Register Now", width: width, onPressed: () {}),
              SizedBox(height: height * 0.05),
              Center(
                child: Text(
                  AppTexts.io,
                  style: TextStyle(
                    fontSize: width * 0.035,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(text: "G", color: Colors.red, width: width),
                  SizedBox(width: width * 0.05),
                  SocialButton(text: "f", color: Colors.blue, width: width),
                ],
              ),
              SizedBox(height: height * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already Have An Account? "),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      AppTexts.login,
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.042,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
