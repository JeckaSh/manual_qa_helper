import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manual_qa_helper/pages/about.dart';
import 'package:manual_qa_helper/pages/interview.dart';
//import 'package:manual_qa_helper/pages/git_articles.dart';
import 'package:manual_qa_helper/pages/manual_qa.dart';
import 'package:manual_qa_helper/pages/settings.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MainMenu();
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      'Ручное тестирование ПО',
      //'GIT для тестировщиков',
      'Настройки',
      'О приложении',
      'Вопросы для собеседования',
      // Квиз с вопросами
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Manual QA Helper')),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menuItems[index]),
            onTap: () {
              switch (index) {
                case 0:
                  Get.off(() => ManualQaPage());
                  break;
                case 1:
                  Get.off(() => SettingsPage());
                  break;
                case 2:
                  Get.off(() => AboutPage());
                  break;
                case 3:
                  Get.off(() => InterviewPage());
                default:
              }
            },
          );
        },
      ),
    );
  }
}
