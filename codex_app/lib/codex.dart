import 'package:codex_app/topicscreen.dart';
import 'package:flutter/material.dart';

class codex extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 74, 140, 247),
        foregroundColor: Colors.white,
        title: Text("Codex"),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search),),
        ],
      ),
      body:SizedBox(
        height: double.infinity,
        width: double.infinity,
      
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text("Languages",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.brown),),
                        margin: EdgeInsets.only(top: 40,left: 30,),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>topics(
                          title1: "Dart",
                          description:"Dart is a client-optimized, garbage-collected, OOP language for creating fast apps that run on any platform. Dart is used to build highperformance web and mobile apps and server and desktop applications.",
                          topic1 :"Abstract Class",
                          topic2:"Interface",
                          topic3:"Mixin",
                          topic4:"Inheritance",
                          ),
                          ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image.asset("./images/dart.png",fit:BoxFit.fill),
                          margin: EdgeInsets.only(top:20,left: 30,),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                                color:  Colors.black,
                                offset: Offset(10, 10),
                                blurRadius: 10,
                              ),
                            ]
                          ),
                        ),
                      ),
                      Container(
                         height: 200,
                        width: 200,
                        child: Image.asset("./images/csharp.png",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                           color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                          ]
                        ),
                      ),
                      Container(
                         height: 200,
                        width: 200,
                        child: Image.asset("./images/java.png",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                          ]
                        ),
                      ),
                      Container(
                         height: 200,
                        width: 200,
                        child: Image.asset("./images/c.jpg",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
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
                        child: Text("Framework",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.brown),),
                         margin: EdgeInsets.only(top: 40,left: 30,),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap:() {
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>topics(
                          title1: "Flutter Framework",
                          description:"Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase..",
                          topic1 :"Scaffold",
                          topic2:"StatelessWidget",
                          topic3:"StatefullWidget",
                          topic4:"Body",
                          ),
                          ),
                          );
                          
                        },
                        
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image.asset("./images/flutter.png",fit:BoxFit.fill),
                          margin: EdgeInsets.only(top:20,left: 30,),
                          decoration: BoxDecoration(
                             color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                                color:  Colors.black,
                                offset: Offset(10, 10),
                                blurRadius: 10,
                              ),
                            ]
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("./images/asp.net.jpg",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                          ]
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("./images/spring-framework.png",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                          ]
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("./images/hibernate.png",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                           color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                              color: Colors.black,
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
                        child: Text("Database",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.brown),),
                         margin: EdgeInsets.only(top: 40,left: 30,),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("./images/sqlserver.png",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                           color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                          ]
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("./images/mongodb.png",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                          ]
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("./images/MySQL.png",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                           color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                          ]
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("./images/Msaccess.png",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                           color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
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
                        child: Text("Tools",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.brown),),
                         margin: EdgeInsets.only(top: 40,left: 30,),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("./images/vscode.jpg",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                          ]
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("./images/mongodb-compass.png",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
                              
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                           
                          ]
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("./images/ms-visual-studio.jpg",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                          ]
                        ),
                      ),
                      Container(height: 200,
                        width: 200,
                        child: Image.asset("./images/git.png",fit:BoxFit.fill),
                        margin: EdgeInsets.only(top:20,left: 30,),
                        decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                              color:  Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                            
                          ]
                        ),),
                    ],
                  ),
                ],
                
              ),
              ),
              
              
            ),
          ),
          
      )  
    );
  }
}