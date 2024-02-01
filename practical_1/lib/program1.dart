import 'package:flutter/material.dart';

class demo extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("practical first"),
          ),
          body:SizedBox(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                   SizedBox(height: 20,),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 40, 87, 167),
                  ),
                   SizedBox(height: 20,),
                  Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 20, 54, 112),
                  ),
                ],
              ),
              Column(
                children: [
                   SizedBox(height: 20,),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.lightGreen,
                  ),
                   SizedBox(height: 20,),
                  Container(
                     height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 76, 116, 31),
                  ),
                   SizedBox(height: 20,),
                  Container(
                     height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 52, 83, 17),
                  ),
                ],
              ),
            ],
           ),
           
            ),
    );
  }
}