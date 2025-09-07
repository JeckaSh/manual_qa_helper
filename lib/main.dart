import 'package:flutter/material.dart';
import 'package:manual_qa_helper/pages/about_app/about_app_view.dart';
import 'package:manual_qa_helper/pages/homepage/homepage_view.dart';
import 'package:manual_qa_helper/pages/settings/settings_model.dart';
import 'package:manual_qa_helper/pages/settings/settings_view.dart';
import 'package:manual_qa_helper/pages/settings/settings_viewmodel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final viewModel = SettingsViewModel(SettingsModel());
  await viewModel.init();

  runApp(MyApp(viewModel: viewModel));
}

class MyApp extends StatelessWidget {
  final SettingsViewModel viewModel;
  const MyApp({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) {
        return MaterialApp(
          //
          // theme block
          //
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: viewModel.isDark ? ThemeMode.dark : ThemeMode.light,
          //
          // end theme block
          //
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          //
          // routes block
          //
          initialRoute: '/',
          routes: {
            '/': (context) => HomePageView(viewModel: viewModel),
            '/about_app': (context) => AboutAppView(viewModel: viewModel),
            '/settings': (context) => SettingsView(viewModel: viewModel),
          },
        );
      },
    );
  }
}
