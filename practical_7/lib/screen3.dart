import 'package:flutter/material.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  int count=0;
  void fun(){
    setState(() {
      count++;
    });
  }
  Widget mycontainer1(){
       if(count>=1){
        return Container(
          height: 200,
          width: 200,
          color: Colors.indigo,
          margin: EdgeInsets.only(top:20),
        );
       }
       return Container();
  }
   Widget mycontainer2(){
       if(count>=2){
        return Container(
          height: 200,
          width: 200,
          color: Colors.greenAccent,
          margin: EdgeInsets.only(top:20),
        );
       }
       return Container();
  }
   Widget mycontainer3(){
       if(count>=3){
        return Container(
          height: 200,
          width: 200,
          color: Colors.deepOrangeAccent,
          margin: EdgeInsets.only(top:20),
        );
       }
       return Container();
  }
   Widget mycontainer4(){
       if(count>=4){
        return Container(
          height: 200,
          width: 200,
          color: Colors.indigo,
          margin: EdgeInsets.only(top:20),
        );
       }
       return Container();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("button click practical"),
      ),
      floatingActionButton: IconButton(onPressed: fun, icon: Icon(Icons.add,color: Colors.brown,)),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              mycontainer1(),
              mycontainer2(),
              mycontainer3(),
              mycontainer4(),
            ],
          ),
        ),
      ),
    );
  }
}