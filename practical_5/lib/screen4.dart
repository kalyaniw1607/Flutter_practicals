import 'package:flutter/material.dart';

class screen4 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("screen 4"),
      ),
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 400,
                child: Image.asset("./images/image1.jpg",fit: BoxFit.cover,),
              ),
              SizedBox(width: 30,),
               Container(
                height: 400,
                width: 400,
                child: Image.asset("./images/image2.jpg",fit: BoxFit.cover,),
              ),
               SizedBox(width: 30,),
               Container(
                height: 400,
                width: 400,
                child: Image.asset("./images/image3.jpg",fit: BoxFit.cover,),
              ),
               SizedBox(width: 30,),
               Container(
                height: 400,
                width: 400,
                child: Image.asset("./images/image4.jpg",fit: BoxFit.cover,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}