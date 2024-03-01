import 'package:codex/quizscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark.dart';
import 'package:highlighting/languages/dart.dart';

class Codescreen extends StatelessWidget {
  List ? datalist;
  int?dataindex;
   Codescreen({super.key,this.datalist,this.dataindex});
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 74, 140, 247),
        foregroundColor: Colors.white,
        title: Text("${datalist![dataindex!]["subject"]}"),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search),),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>quizdemo(dataindex: dataindex,datalist: datalist,)));
      }, child: Text("Quiz"),
       backgroundColor: Colors.blue.shade500,
        foregroundColor: Colors.black),
      body: SizedBox(
        
        child: Container(
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
          child: ListView.builder(
           itemCount: datalist![dataindex!]["Code"].length,
           itemBuilder:(context, index) {
              print(index);
             return Column(
               
               children: [
                 Text("Program : ${index+1}",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.brown),),
                 Container(
                   height: 350,
                  width: 300,
                 color: Colors.white,
                  margin: EdgeInsets.only(left:20,top:10,bottom:20,right: 20),
                  
                   child: SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                        
                     child: SingleChildScrollView(
                       scrollDirection: Axis.vertical,
                       child: HighlightView(
                        
                         datalist![dataindex!]["Code"][index],
                          textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,),
                          languageId: dart.id,
                          theme: githubDarkTheme,
                       ),
                     ),
                   ),
                 ),
               ],
             );
             
           },),
        ),
       
      ),
      
    );
  }
}