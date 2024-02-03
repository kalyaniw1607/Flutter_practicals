import 'package:flutter/material.dart';
import 'package:practical_7/listview.dart';
import 'package:practical_7/navigation.dart';
import 'package:practical_7/screen1.dart';
import 'package:practical_7/screen2.dart';
import 'package:practical_7/screen3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:navigation_pract()
    );
  }
}
