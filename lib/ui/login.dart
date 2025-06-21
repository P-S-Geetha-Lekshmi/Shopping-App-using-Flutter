import 'package:flutter/material.dart';

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
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: width * 0.07,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "Sign in to your account.",
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              _input("Email", width),
              SizedBox(height: height * 0.02),
              _input("Password", width, obscure: true),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.black, fontSize: width * 0.038),
                  ),
                ),
              ),
              SizedBox(height: height * 0.015),
              _mainButton("Login", width, onPressed: () {}),
              SizedBox(height: height * 0.04),
              Row(
                children: [
                  const Expanded(child: Divider(thickness: 1)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: Text(
                      "Or Continue With",
                      style: TextStyle(fontSize: width * 0.035),
                    ),
                  ),
                  const Expanded(child: Divider(thickness: 1)),
                ],
              ),
              SizedBox(height: height * 0.025),
              _socialButtons(width),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a Member? "),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Join Now",
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

  static Widget _input(String hint, double width, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: width * 0.04),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.grey[100],
      ),
    );
  }

  static Widget _mainButton(String text, double width, {required VoidCallback onPressed}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        minimumSize: Size(double.infinity, width * 0.13),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: width * 0.045),
      ),
    );
  }

  static Widget _socialButtons(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialBtn("G", Colors.red, width),
        SizedBox(width: width * 0.05),
        _socialBtn("f", Colors.blue, width),
      ],
    );
  }

  static Widget _socialBtn(String text, Color color, double width) {
    return Container(
      width: width * 0.35,
      height: width * 0.1,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: width * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
