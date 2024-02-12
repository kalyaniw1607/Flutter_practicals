import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:highlighting/languages/dart.dart';
import 'package:flutter_highlighting/themes/github.dart';

class codescreen extends StatelessWidget {
  String ? name;
  List ? codes;
  List ? topic;
  
  int? codeindex;
   codescreen({super.key,this.name,this.codes,this.codeindex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 74, 140, 247),
        foregroundColor: Colors.white,
        title: Text("$name"),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search),),
        ],
      ),
      body:SizedBox(
             
        child: Container(
          
          decoration: BoxDecoration(
            
                gradient: LinearGradient(
                   begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  colors: <Color>[
             
                Colors.blue.shade300,
                Colors.blue.shade200,
                Colors.blue.shade100,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Color.fromARGB(41, 135, 1, 97),
                Color.fromARGB(76, 135, 1, 97),
                Color.fromARGB(174, 135, 1, 97),
                ], 
                ),
            ),
            
          child: ListView.builder(
            itemCount:1,
            itemBuilder: (context, index) {
              
             
              return Center(
                 
                child: Container(
                  margin: EdgeInsets.all(40),
                  padding: EdgeInsets.all(20),
                  height: 500,
                  width: 500,
                  color: Colors.white,
                
                  child: Center(
                   
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: HighlightView(
                               codes?[codeindex!],
                          textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,),
                                     languageId: dart.id,
                                     theme: githubTheme,
                        ),
                      ),
                    ),
                  ),
                ),
              );
              
            },),
            
        ),
      ),
    );
  }
}