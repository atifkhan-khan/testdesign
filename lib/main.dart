import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Design/LogOutScreen.dart';
import 'Design/themeServices.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeService = await ThemeService.instance;
  var initTheme = themeService.initial;
  runApp(MyApp(theme: initTheme));
}

class MyApp extends StatelessWidget {
  MyApp({required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: theme,
      builder: (_, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: ScreenDesign(),
        );
      },
    );
  }
}