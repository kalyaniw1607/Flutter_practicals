import 'package:flutter/material.dart';

class demo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("practical 2"),
      ),
      body: SizedBox(
          height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
                height:100,
                width: 100,
                color: Colors.deepPurpleAccent,
            ),
            Container(
                height:100,
                width: 100,
                color: Color.fromARGB(255, 31, 40, 173),
            ),
            Container(
                height:100,
                width: 100,
                color: Color.fromARGB(255, 18, 141, 65),
            ),
          ],
        ),
        ),
    );
  }
}