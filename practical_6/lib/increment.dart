import 'package:flutter/material.dart';

class incrementpract extends StatefulWidget {
  const incrementpract({super.key});

  @override
  State<incrementpract> createState() => _incrementpractState();
}

class _incrementpractState extends State<incrementpract> {
  int a =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("increment operation"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text("$a"),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              setState(() {
                a=a+1;
              });
            }, child:Text("Increment"),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              setState(() {
                a=0;
              });
            }, child:Text("Reset"),),
          ],
          
           ),
           
           
       ),
    );
  }
}