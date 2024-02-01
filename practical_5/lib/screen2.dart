import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("screen2"),
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.tealAccent,
                ),
                SizedBox(height: 20,),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.redAccent,
                ),
                 SizedBox(height: 20,),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.cyan,
                ),
                 SizedBox(height: 20,),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.indigo,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}