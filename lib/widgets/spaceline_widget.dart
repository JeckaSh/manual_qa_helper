import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manual_qa_helper/controllers/theme_controller.dart';

class Spaceline extends StatelessWidget {
  const Spaceline({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return Container(
      height: 2,
      width: double.infinity,
      color: themeController.isDarkMode.value ? Colors.white : Colors.black,
    );
  }
}
