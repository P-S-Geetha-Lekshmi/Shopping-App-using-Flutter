import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final double width;
  final VoidCallback onPressed;

  const MainButton({
    super.key,
    required this.text,
    required this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        minimumSize: Size(double.infinity, width * 0.13),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: width * 0.045),
      ),
    );
  }
}
