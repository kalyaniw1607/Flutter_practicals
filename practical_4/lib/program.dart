import 'package:flutter/material.dart';

class demo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Rows practical"),
          ),
          body: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 40,height: 50,),
                    Text("First Row"),
                  ],
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                     Container(
                      height: 100,
                      width: 100,
                      color: Colors.pink,
                    ),
                     Container(
                      height: 100,
                      width: 100,
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 40,height: 50,),
                    Text("second Row"),
                  ],
                ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.lightBlue,
                    ),
                     Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                    ),
                     Container(
                      height: 100,
                      width: 100,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ],
            ),
          ),
          );
  
      
  }
}