import 'dart:js';

import 'package:codex/topicscreen.dart';
import 'package:flutter/material.dart';

class mainscreen extends StatelessWidget {
   mainscreen({super.key});
   List<String> darttopic=["Inheritance","Abstract Class","Interface","Mixin"];

 Widget reusablecontainer(BuildContext context,String name,String imgurl){
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>topics(name:name,topic:darttopic)),);
      },
      child: Container(
        
                height: 200,
                            width: 200,
                            
                            margin: EdgeInsets.only(top:20,left: 30,bottom: 10,right: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(imgurl),fit: BoxFit.fill),
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
                        
    );
                     
  
   }
   
  @override
  Widget build(BuildContext context) {
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
                      reusablecontainer(context,"Dart","./images/dart.png"),
                      reusablecontainer(context,"C#","./images/csharp.png"),
                      reusablecontainer(context,"Java","./images/java.png"),
                      reusablecontainer(context,"C","./images/c.jpg"),
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
                      reusablecontainer(context,"Flutter","./images/flutter.png"),
                      reusablecontainer(context,"ASP.Net","./images/asp.net.jpg"),
                      reusablecontainer(context,"spring","./images/spring-framework.png"),
                      reusablecontainer(context,"Hibernate","./images/hibernate.png"),
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
                      reusablecontainer(context,"SQL Server","./images/sqlserver.png"),
                      reusablecontainer(context,"MongoDB","./images/mongodb.png"),
                      reusablecontainer(context,"MYSQL","./images/MYSQL.png"),
                      reusablecontainer(context,"MSAccess","./images/Msaccess.png"),
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
                      reusablecontainer(context,"Visual Studio Code","./images/ms-visual-studio.jpg"),
                      reusablecontainer(context,"MongoDB Compass","./images/mongodb-compass.png"),
                      reusablecontainer(context,"Visual Studio","./images/vscode.jpg"),
                      reusablecontainer(context,"Git","./images/git.png"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        
      ),
      
    );
  }
}