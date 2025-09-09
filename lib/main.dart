import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manual_qa_helper/controllers/article_controller.dart';
import 'package:manual_qa_helper/controllers/theme_controller.dart';
import 'package:manual_qa_helper/pages/logopage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  Get.put(ArticleController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController _themeController = Get.put(ThemeController());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manual QA helper',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode:
          _themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
      home: LogoPage(),
    );
  }
}
