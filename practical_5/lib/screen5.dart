import 'dart:ui';

import 'package:flutter/material.dart';

class screen5 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("screen5"),
      ),
      body: SizedBox(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                 // image: DecorationImage(image:AssetImage("./images/image2.jpg"),),
                  color: Color.fromARGB(255, 187, 25, 25),
                 
                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){print("Button pressed");}, child: Text("Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}