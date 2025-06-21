import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final Color color;
  final double width;

  const SocialButton({
    super.key,
    required this.text,
    required this.color,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
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
