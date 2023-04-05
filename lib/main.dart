import 'package:flutter/material.dart';
import 'package:widget_lesson/widget_lesson.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/widget_lesson': (context) => const WidgetLesson(),
      },
      initialRoute: ('/widget_lesson'),

      home: const Scaffold(),
    );
  }
}

