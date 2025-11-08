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
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Text(
                'Это приложение шпаргалка для специалистов по ручному тестированию ПО',
              ),
              SizedBox(height: 10),
              Text('По всем вопросам можно написать на почту:'),
              SizedBox(height: 5),
              Text('jeckashevelkov@icloud.com'),
              SizedBox(height: 10),
              Text('Версия приложения 0.15'),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: backButton,
                    child: Text('Назад'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
