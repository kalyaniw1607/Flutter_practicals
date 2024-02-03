import 'package:flutter/material.dart';

class screen1 extends StatelessWidget{
  Widget fun(){
    print("this is fun method");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("By using fun method"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 400,
                color: Colors.deepPurple,
              ),
            ],
          ),
      ),
    );
    
  }
  @override
  Widget build(BuildContext context){
    return fun();
  }
}