import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Widget page;
  final bool filled;
  final double height;
  final double fontSize;

  const CustomButton({
    super.key,
    required this.text,
    required this.page,
    required this.filled,
    required this.height,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: OutlinedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        ),
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
