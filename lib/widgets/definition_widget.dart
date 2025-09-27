import 'package:flutter/material.dart';

class DefinitionWidget extends StatelessWidget {
  final String definition;
  const DefinitionWidget({super.key, required this.definition});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // TODO: Поменять цвет определения на менее вырвиглазный
        color: Colors.orange,
        border: Border.all(
          width: 2,
          color: Colors.orangeAccent,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(10),
      ),

      child: IntrinsicWidth(
        stepWidth: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            definition,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
