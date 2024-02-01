import 'package:flutter/material.dart';

class insta extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        title: Text("Instagram",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 30),),
        actions: [
          IconButton(onPressed: (){},
          icon: Icon(Icons.favorite_border),),
         
        ],
       ),
    );
  }
}