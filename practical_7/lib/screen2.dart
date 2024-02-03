import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => __screen2State();
}

class __screen2State extends State<screen2> {
  int count =0;
  void fun(){
    setState(() {
      count++;
    });
  }
  Widget mycontainer(){
    if(count==1){
      return Container(
          height: 300,
          width: 300,
          color: Colors.deepPurple,
      );
    }
    return Container();
  }
  @override
  Widget build(BuildContext context) {
    print("build called on button pressed");
    return Scaffold(
      appBar: AppBar(
        title: Text("button click practical"),
      ),
      floatingActionButton: IconButton(onPressed:fun, icon:Icon(Icons.add,color: Colors.redAccent,),),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mycontainer(),
            ],
          ),
      ),
    );
  }
}