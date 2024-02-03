import 'package:flutter/material.dart';

class listview_pract extends StatelessWidget {
  const listview_pract({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Listview practical"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        
        children: [
          Container(
            height: 200,
            width: 200,
            color:Colors.cyanAccent,
            margin: EdgeInsets.only(top: 20,left: 20),
          ),
          Container(
            height: 200,
            width: 200,
            color:Color.fromARGB(255, 43, 7, 109),
            margin: EdgeInsets.only(top: 20,left: 20),
          ),
          Container(
            height: 200,
            width: 200,
            color:Color.fromARGB(255, 230, 25, 161),
            margin: EdgeInsets.only(top: 20,left: 20),
          ),
          Container(
            height: 200,
            width: 200,
            color:Color.fromARGB(255, 8, 40, 145),
            margin: EdgeInsets.only(top: 20,left: 20),
          )
        ],
      ),
    );
  }
}