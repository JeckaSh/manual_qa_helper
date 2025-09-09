import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manual_qa_helper/pages/homepage.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Get.off(() => Homepage());
    });

    return Scaffold(
      body: Center(
        child: Text('Manual QA Helper', style: TextStyle(fontSize: 32)),
      ),
    );
  }
}
