import 'dart:js';

import 'package:flutter/material.dart';

class topics extends StatelessWidget {
   String ? name;
   List ? topic;
 topics({super.key,this.name,this.topic});
  
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 74, 140, 247),
        foregroundColor: Colors.white,
        title: Text("$name"),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search),),
        ],
      ),
      body:SizedBox(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                 begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                colors: <Color>[
           
              Colors.blue.shade300,
              Colors.blue.shade200,
              Colors.blue.shade100,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Color.fromARGB(41, 135, 1, 97),
              Color.fromARGB(76, 135, 1, 97),
              Color.fromARGB(174, 135, 1, 97),
              ], 
              ),
          ),
          child: ListView.builder(
            itemCount: topic?.length,
            itemBuilder:(context, index) {
             
              return Center(
                child: Container(
                  height: 50,
                      width: 300,
                       margin: EdgeInsets.only(left: 30,top:30,),
                       padding: EdgeInsets.only(left: 60,top:7),
                       decoration: BoxDecoration(
                               color: const Color.fromARGB(167, 187, 222, 251),
                              boxShadow:[
                                BoxShadow(
                                  color: Color.fromARGB(218, 158, 158, 158),
                                  offset: Offset(10, 10),
                                  blurRadius: 10,
                                ),
                              ]
                            ),
                  child: Center(child: Text("${topic?[index]}",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Color.fromARGB(255, 74, 140, 247),fontFamily:"Times New Roman"),),
                ),
                ),
              );
            
          },),
        ),
      
      ),
    );
        
    
  }
}