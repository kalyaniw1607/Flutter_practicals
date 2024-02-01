import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class appbar1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
      title: Text("facebook"),
      
      actions: [
   
        IconButton(onPressed: (){print("clicked on home");}, icon:Icon(Icons.home,color: Colors.white),),
        IconButton(onPressed: (){print("clicked on friend request ");}, icon:Icon(Icons.people,color:Colors.white),),
        IconButton(onPressed: (){print("clicked on messeges");}, icon:Icon(Icons.message,color:Colors.white),),
        IconButton(onPressed: (){print("clicked on notification");}, icon:Icon(Icons.notifications,color:Colors.white),),
        
      ],
     ),
     
    );
  }
}