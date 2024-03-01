import 'package:flutter/material.dart';
import 'package:quizz_app/scorepage.dart';

class quizdemo extends StatefulWidget {
   quizdemo({super.key});

  @override
  State<quizdemo> createState() => _quizdemoState();
}

class _quizdemoState extends State<quizdemo> {
    
  List<Map> questions =[
    {
      "question":"Which programming language is used to build Flutter applications?",
       "options": ["Kotlin","Dart","Java","Go"],
       "correct": 1
    },
    {
      "question":"How many types of widgets are there in Flutter?",
      "options": ["4","6","2","8+"],
       "correct": 2
    },
    {
      "question":"Which component allows us to specify the distance between widgets on the screen?",
      "options": ["SafeArea","SizedBox","table","AppBar"],
       "correct": 1
    },
    {
      "question":"What widget would you use for repeating content in Flutter?",
      "options": ["ExpandedView","Stack","ArrayView","ListView"],
      "correct": 3
    },
    {
      "question":"Flutter developed by?",
      "options": ["IBM","Google","Oracle","Facebook"],
      "correct": 1
    },
     {
      "question":"Flutter is not a language; it is an SDK. ",
      "options": ["TRUE","FALSE","Can be true or false","Can not say"],
      "correct": 0
    },
    {
      "question":"pubspec.yaml file does not contain?",
      "options": ["Project general settings"," Project dependencies","Project language","Project assets"],
      "correct": 2
    },
     {
      "question":"The examples of the Stateless widget are?",
      "options": ["Text","Row","Column","All of the above"],
      "correct": 3
    }
  ];
  int  index = 0;
  int selectedansIndex =-1;
  int score = 0;
  int presscount =0;
  MaterialStatePropertyAll<Color> ?checkans(int buttonindex, int presscount)
  {
    
    if(selectedansIndex!=-1){
      if(buttonindex==selectedansIndex){
        if(selectedansIndex==questions[index]["correct"]){
         
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
        if(buttonindex == questions[index]["correct"]){
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
      body:Column(
        children: <Widget>[
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Questions :", style: TextStyle(fontSize: 25),),
              Text("${index+1}/${questions.length}",style: TextStyle(fontSize: 25),),
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
            child: Text("Q. ${index+1} ${questions[index]["question"]}",
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
          child: Text("A. ${questions[index]["options"][0]}",style: TextStyle(fontSize: 18),),
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
          child: Text("B. ${questions[index]["options"][1]}",style: TextStyle(fontSize: 18),),
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
          child: Text("C. ${questions[index]["options"][2]}",style: TextStyle(fontSize: 18),),
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
          child: Text("D. ${questions[index]["options"][3]}",style: TextStyle(fontSize: 18),),
           style: ButtonStyle(
            backgroundColor:checkans(3,presscount),
            fixedSize: MaterialStatePropertyAll(Size(300,35)),
           ),
          ),
          SizedBox(
            height: 35,
          ),
        FloatingActionButton(onPressed: () {
         if(index<questions.length-1){
          setState(() {
            index++;
            selectedansIndex =-1;
            presscount=0;
          });
         }
         else{
            setState(() {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>scorepage( score:score,questionlist:questions)),);
            });
           
        
         }
       },
      backgroundColor: Color.fromARGB(167, 140, 241, 25),
       child: Icon(Icons.forward,color: Colors.white,),),
        ],
        
      ) ,

    );
  }
}