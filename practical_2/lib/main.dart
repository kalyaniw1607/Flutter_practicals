import 'package:flutter/material.dart';
import 'package:practical_2/program1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: demo()
    );
  }
}
