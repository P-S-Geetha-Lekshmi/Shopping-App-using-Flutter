import 'package:flutter/material.dart';
import '../widgets/constant.dart';
import '../widgets/custom_input.dart';
import '../widgets/main_button.dart';
import '../widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08),
          child: Column(
            children: [
              SizedBox(height: height * 0.08),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppTexts.can,
                      style: TextStyle(
                        fontSize: width * 0.07,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      AppTexts.ign,
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              CustomInput(hint: "Email", width: width),
              SizedBox(height: height * 0.02),
              CustomInput(hint: "Password", width: width, obscure: true),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppTexts.password,
                    style: TextStyle(color: Colors.black, fontSize: width * 0.038),
                  ),
                ),
              ),
              SizedBox(height: height * 0.015),
              MainButton(text: "Login", width: width, onPressed: () {}),
              SizedBox(height: height * 0.04),
              Row(
                children: [
                  const Expanded(child: Divider(thickness: 1)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: Text(AppTexts.gg, style: TextStyle(fontSize: width * 0.035)),
                  ),
                  const Expanded(child: Divider(thickness: 1)),
                ],
              ),
              SizedBox(height: height * 0.025),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(text: "G", color: Colors.red, width: width),
                  SizedBox(width: width * 0.05),
                  SocialButton(text: "f", color: Colors.blue, width: width),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a Member? "),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      AppTexts.join,
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.042,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.015),
            ],
          ),
        ),
      ),
    );
  }
}
