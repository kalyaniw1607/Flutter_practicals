import 'package:flutter/material.dart';

class screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("screen1"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.indigoAccent,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.deepOrange,
            ),
          ],
        ),
      ),
    );
  }
}