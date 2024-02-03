import 'package:flutter/material.dart';
import 'package:practical_7/secondscreen.dart';

class navigation_pract extends StatelessWidget {
  const navigation_pract
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("navigation page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>second()));
              },
              child: Container(
                height: 200,
                width: 200,
                child: Text("click here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),
                padding: EdgeInsets.only(top:80,left:50),
                decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(color: Colors.black,width: 2),
                  boxShadow:[
                    BoxShadow(
                    blurRadius: 10,
                    offset: Offset(10, 10),
                    color: Colors.blue,
                  ),
                  ], 
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}