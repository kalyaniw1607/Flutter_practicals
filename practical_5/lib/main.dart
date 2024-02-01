import 'package:flutter/material.dart';
import 'package:practical_5/screen1.dart';
import 'package:practical_5/screen2.dart';
import 'package:practical_5/screen3.dart';
import 'package:practical_5/screen4.dart';
import 'package:practical_5/screen5.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: screen5()
    );
  }
}
