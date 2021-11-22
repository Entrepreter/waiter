import 'dart:async';

import 'package:dakiya/injector.dart';
import 'package:flutter/material.dart';

import 'screens/main_page.dart';

void main() {
  runZoned(() async {
    await init();
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dakiya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: const MainPage(),
    );
  }
}
