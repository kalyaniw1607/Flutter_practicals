import 'package:flutter/material.dart';

class demo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("practical_3"),
      ),
      body: SizedBox(
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        
            children: [
              Container(
                 height: 200,
                 width: 200,
                 color: Colors.indigo,
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){print("button pressed");},child: Text("Button"),),
            ]
          ),
        ),
      ),
    );
  }
}