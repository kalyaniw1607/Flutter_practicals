import 'package:codex/scorepage.dart';
import 'package:flutter/material.dart';


class quizdemo extends StatefulWidget {
  final List? datalist;
  final int?dataindex;
   quizdemo({super.key,this.dataindex,this.datalist});
  
  @override
  State<quizdemo> createState() => _quizdemoState();
}

class _quizdemoState extends State<quizdemo> {
   
  int  index = 0;
  int selectedansIndex =-1;
  int score = 0;
  int presscount =0;
  MaterialStatePropertyAll<Color> ?checkans(int buttonindex, int presscount)
  {
    
    if(selectedansIndex!=-1){
      if(buttonindex==selectedansIndex){
        if(selectedansIndex== widget.datalist![widget.dataindex!]["quiz"][index]["correct"] ){
         
          if(presscount==1){
              score++;
            
          }
         
         
          return MaterialStatePropertyAll(Colors.green);
               
           }
           else{
            return MaterialStatePropertyAll(Colors.red);
           }
      }
      else{
        if(buttonindex ==widget.datalist![widget.dataindex!]["quiz"][index]["correct"]){
          return   MaterialStatePropertyAll(Colors.green);
        }
      
       }
    
    }
    else{
      return MaterialStatePropertyAll(Color.fromARGB(73, 18, 15, 182),);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(172, 223, 64, 251),
        centerTitle: true,
        title: Text("Quiz",style: TextStyle(fontSize: 25),),
      ),
      body:Container(
        decoration: BoxDecoration(
                    gradient: LinearGradient(
                       begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      colors: <Color>[
                         Color.fromARGB(50, 68, 137, 255),
                         Color.fromARGB(50, 68, 137, 255),
                         Colors.white24,
                         Colors.white24,
                         Color.fromARGB(50, 68, 137, 255),
                         Color.fromARGB(50, 68, 137, 255),
                     ], 
                    ),
             ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Questions :", style: TextStyle(fontSize: 25),),
                Text("${index+1}/${widget.datalist![widget.dataindex!]["quiz"].length}",style: TextStyle(fontSize: 25),),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.black,
            ),
            SizedBox(height: 30,),
            Container(
              margin:EdgeInsets.only(left: 15),
              child: Text("Q. ${index+1} ${widget.datalist![widget.dataindex!]["quiz"][index]["question"]}",
              style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 35,),
            ElevatedButton(
              onPressed: (){
                setState(() {
                selectedansIndex=0;
               
                });
                 presscount++;
              }, 
            child: Text("A. ${widget.datalist![widget.dataindex!]["quiz"][index]["options"][0]}",style: TextStyle(fontSize: 18),),
             style: ButtonStyle(
              backgroundColor: checkans(0,presscount),
              fixedSize: MaterialStatePropertyAll(Size(300,35)),
             ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  selectedansIndex=1;
                  
                });
                 presscount++;
              }, 
            child: Text("B. ${widget.datalist![widget.dataindex!]["quiz"][index]["options"][1]}",style: TextStyle(fontSize: 18),),
             style: ButtonStyle(
              backgroundColor: checkans(1,presscount),
              fixedSize: MaterialStatePropertyAll(Size(300,35)),
             ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  selectedansIndex=2;
                  
                });
                 presscount++;
              }, 
            child: Text("C. ${widget.datalist![widget.dataindex!]["quiz"][index]["options"][2]}",style: TextStyle(fontSize: 18),),
             style: ButtonStyle(
              backgroundColor: checkans(2,presscount),
              fixedSize: MaterialStatePropertyAll(Size(300,35)),
             ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  selectedansIndex=3;
                 
                });
                 presscount++;
              }, 
            child: Text("D. ${widget.datalist![widget.dataindex!]["quiz"][index]["options"][3]}",style: TextStyle(fontSize: 18),),
             style: ButtonStyle(
              backgroundColor:checkans(3,presscount),
              fixedSize: MaterialStatePropertyAll(Size(300,35)),
             ),
            ),
            SizedBox(
              height: 35,
            ),
          FloatingActionButton(onPressed: () {
           if(index<widget.datalist![widget.dataindex!]["quiz"].length-1){
            setState(() {
              index++;
              selectedansIndex =-1;
              presscount=0;
            });
           }
           else{
              setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>scorepage(score: score,dataindex:widget.dataindex,datalist:widget.datalist)),);
              });
             
          
           }
         },
        backgroundColor: Color.fromARGB(167, 140, 241, 25),
         child: Icon(Icons.forward,color: Colors.white,),),
          ],
          
        ),
      ) ,

    );
  }
}