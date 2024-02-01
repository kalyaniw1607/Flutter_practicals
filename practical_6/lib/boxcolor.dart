import 'package:flutter/material.dart';

class boxexample extends StatefulWidget {
  const boxexample({super.key});

  @override
  State<boxexample> createState() => _boxexampleState();
}

class _boxexampleState extends State<boxexample> {
  bool boxcolor =false;
  @override
  Widget build(BuildContext context) {
    print("employee build method");
    return Scaffold(
      appBar: AppBar(
        title: Text("stateful widget"),
      ),
      body:Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
              height: 200,
              width: 200,
              color: boxcolor ? Color.fromARGB(255, 230, 11, 113) : Colors.deepPurple,

              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed:(){
                setState(() {
                  boxcolor=!boxcolor;
                });
              }, 
              child:Text("click here"),),
            ],
          ),
        ),
      ),
    );
  }
}