

import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:highlighting/languages/dart.dart';
import 'package:flutter_highlighting/themes/github.dart';


class coding extends StatelessWidget {
   String ? lang;
   String ? info;
    String ? code;
   
   coding({super.key,this.lang,this.info,this.code});
      
    
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 74, 140, 247),
        foregroundColor: Colors.white,
        title: Text("$lang"),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search),),
        ],
      ),
      body: SizedBox(
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
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 230,
                    width: 300,
                    margin: EdgeInsets.only(left: 30,top:40,),
                    child: Text("$info",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 23,color: Color.fromARGB(255, 128, 69, 46),fontFamily:"Times New Roman"),),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                     height: 50,
                    width: 300,
                     margin: EdgeInsets.only(left: 30,top:20,),
                     padding: EdgeInsets.only(left: 80,top:7),
                     child: Text("Example",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Color.fromARGB(255, 74, 140, 247),fontFamily:"Times New Roman"),),
                      decoration: BoxDecoration(
                             color: const Color.fromARGB(167, 187, 222, 251),
                            boxShadow:[
                              BoxShadow(
                                color: Color.fromARGB(218, 158, 158, 158),
                                offset: Offset(10, 10),
                                blurRadius: 10,
                              ),
                            ]
                          ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                     height: 300,
                    width: 300,
                     margin: EdgeInsets.only(left: 30,top:20,),
                    
                      decoration: BoxDecoration(
                             color: const Color.fromARGB(167, 187, 222, 251),
                            boxShadow:[
                              BoxShadow(
                                color: Color.fromARGB(218, 158, 158, 158),
                                offset: Offset(10, 10),
                                blurRadius: 10,
                              ),
                            ]
                          ),
                         
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: HighlightView(
                                 code!,
                                textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,),
                                 languageId: dart.id,
                                 theme: githubTheme,
                              ),
                            ),
                          ),
                         
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}