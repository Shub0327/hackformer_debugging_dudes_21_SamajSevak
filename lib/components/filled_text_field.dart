import 'package:flutter/material.dart';

class FilledTextField extends StatelessWidget {
  const   FilledTextField({super.key, required this.hinttext});
  final String hinttext;

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
            filled: true,
            fillColor: Color(0xFFF6F2F2),
            hintText: hinttext,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),

            // prefixText: '+91',
          ),
        ),
      ),
    );
  }
}
