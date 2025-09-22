import 'package:flutter/material.dart';

class CodeWidget extends StatelessWidget {
  final String code;
  const CodeWidget({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(
          width: 2,
          color: Colors.blueGrey,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(10),
      ),

      child: IntrinsicWidth(
        stepWidth: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(code, style: TextStyle(fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }
}
