import 'package:flutter/material.dart';

class Snaps extends StatelessWidget {
  const Snaps({super.key, required this.direc});
  final String direc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset(
        direc,
      ),
    );
  }
}
