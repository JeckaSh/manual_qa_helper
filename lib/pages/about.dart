import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manual_qa_helper/pages/homepage.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    backButton() {
      Get.off(() => Homepage());
    }

    return Scaffold(
      appBar: AppBar(title: Text('О Приложении')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                'Это приложение шпаргалка для специалистов по ручному тестированию ПО',
              ),
              SizedBox(height: 10),
              Text('По всем вопросам можно написать на почту:'),
              SizedBox(height: 5),
              Text('jeckashevelkov@icloud.com'),
              Spacer(),
              ElevatedButton(onPressed: backButton, child: Text('Назад')),
            ],
          ),
        ),
      ),
    );
  }
}
