import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String headline;
  const Headline({super.key, required this.headline});

  @override
  Widget build(BuildContext context) {
    return Text(
      headline,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
