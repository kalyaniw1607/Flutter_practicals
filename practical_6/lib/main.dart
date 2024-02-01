import 'package:flutter/material.dart';
import 'package:practical_6/appbarpract.dart';
import 'package:practical_6/boxcolor.dart';
import 'package:practical_6/increment.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("main build method");
    return  MaterialApp(
     debugShowCheckedModeBanner: false,
        home:Text("hello")
      
    );
  }
}
