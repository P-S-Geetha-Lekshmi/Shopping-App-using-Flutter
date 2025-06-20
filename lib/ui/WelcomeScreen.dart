import 'package:flutter/material.dart';
import 'package:geetha_myntraa/ui/login.dart';
import 'package:geetha_myntraa/ui/register.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/background.jpg'), // Ensure image exists

              Column(
                children: [
                  _button(context, "Log In", const LoginScreen(), filled: false),
                  const SizedBox(height: 10),
                  _button(context, "Sign Up", const SignUpScreen(), filled: true),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _button(BuildContext ctx, String text, Widget page, {bool filled = true}) {
    return OutlinedButton(
      onPressed: () => Navigator.push(ctx, MaterialPageRoute(builder: (_) => page)),
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: filled ? Colors.orange : Colors.transparent,
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.orange),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // Rounded corners
        ),
      ),
      child: Text(text),
    );
  }
}