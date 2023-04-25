import 'package:flutter/material.dart';
import 'package:twitter/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      theme: ThemeData(
        primaryColor: const Color(0xFF4C9EEB),
      ),
      home: const MainPage(),
    );
  }
}
