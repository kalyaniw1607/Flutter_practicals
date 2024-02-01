import 'package:flutter/material.dart';
import 'package:instagram_app/instagram.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: insta()
    );
  }
}
