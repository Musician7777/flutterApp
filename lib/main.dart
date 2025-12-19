import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/notifiers.dart';
import 'package:my_flutter_app/views/pages/welcome_page.dart';
import 'package:my_flutter_app/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

//Material App (statefull)
//Scaffold
//App title
//Navigation bar

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: darkModeNotifier,
      builder: (BuildContext context, dynamic darkMode, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.red,
              brightness: darkMode ? Brightness.dark : Brightness.light,
            ),
          ),
          home: WelcomePage(),
        );
      },
    );
  }
}
