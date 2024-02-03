import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  int count =0;
    void add(){
      setState(() {
        count++;
      });
    }
    Widget mycontainer(){
         if(count==1){
            return Container(
                height: 300,
                width: 300,
                child:Image.asset("./images/star.jpg",fit: BoxFit.cover,),
              );
         }  
         return Container();
    }
   
  @override
  Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
          centerTitle: true,
          title: Text("second screen"),
         ),
         body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              
              mycontainer(),
              Container(
                child: ElevatedButton(onPressed: add, child: Text("click here"),),
               margin: EdgeInsets.only(top: 20),
              ),
             
            
            ],
          ),
         ),
    );
  }
}

    
 