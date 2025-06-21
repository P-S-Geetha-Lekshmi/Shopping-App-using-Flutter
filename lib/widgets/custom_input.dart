import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hint;
  final double width;
  final bool obscure;

  const CustomInput({
    super.key,
    required this.hint,
    required this.width,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: width * 0.04),
        suffixIcon: obscure ? const Icon(Icons.visibility_off) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Colors.grey[100],
      ),
    );
  }
}
