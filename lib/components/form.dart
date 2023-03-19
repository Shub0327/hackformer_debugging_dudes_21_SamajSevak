import 'package:flutter/material.dart';

class forms extends StatelessWidget {
  const forms({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF1B1D22),
          ),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(10),
            ),
            // prefixText: '+91',
          ),
        ),
      ),
    );
  }
}
