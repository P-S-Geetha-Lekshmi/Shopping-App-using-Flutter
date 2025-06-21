import 'package:flutter/material.dart';

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
                "Sign Up",
                style: TextStyle(
                  fontSize: width * 0.08,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.015),
              Text(
                "Create an account so you can order your favorite products easily and quickly.",
                style: TextStyle(
                  fontSize: width * 0.04,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: height * 0.04),
              _input("Username", width),
              SizedBox(height: height * 0.015),
              _input("Email", width),
              SizedBox(height: height * 0.015),
              _input("Password", width, obscure: true),
              SizedBox(height: height * 0.03),
              _mainButton("Register Now", width, onPressed: () {}),
              SizedBox(height: height * 0.05),
              Center(
                child: Text(
                  "=========== Or Continue With ===========",
                  style: TextStyle(
                    fontSize: width * 0.035,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              _socialButtons(width),
              SizedBox(height: height * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already Have An Account? "),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      "Log In",
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

  Widget _input(String hint, double width, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: width * 0.04),
        suffixIcon: obscure ? const Icon(Icons.visibility_off) : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        filled: true,
        fillColor: Colors.grey[100],
      ),
    );
  }

  Widget _mainButton(String text, double width, {required VoidCallback onPressed}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        minimumSize: Size(double.infinity, width * 0.13),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: width * 0.045),
      ),
    );
  }

  Widget _socialButtons(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialBtn("G", Colors.red, width),
        SizedBox(width: width * 0.05),
        _socialBtn("f", Colors.blue, width),
      ],
    );
  }

  Widget _socialBtn(String text, Color color, double width) {
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
