import 'package:flutter/material.dart';
import 'package:flutter_widget_advance/Home.dart';
import 'package:flutter_widget_advance/Mylist1.dart';
import 'package:flutter_widget_advance/Mylist2.dart';
import 'package:flutter_widget_advance/Mylist3.dart';
import 'package:flutter_widget_advance/Mylist4.dart';
import 'package:flutter_widget_advance/Mylist5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Advance Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      initialRoute: '/',

      routes: {
        '/': (context) => const Homedart(), // หน้าแรก
        '/Mylist1': (context) => const Mylist1(),
        '/Mylist2': (context) => const Mylist2(),
        '/Mylist3': (context) => const Mylist3(),
        '/Mylist4': (context) => const Mylist4(),
        '/Mylist5': (context) => const Mylist5(),
      },
    );
  }
}
