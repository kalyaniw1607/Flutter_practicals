import 'dart:js';

import 'package:codex/topicscreen.dart';
import 'package:flutter/material.dart';

class mainscreen extends StatelessWidget {
   mainscreen({super.key});
   List<String> darttopic=["Inheritance","Abstract Class","Interface","Mixin"];
    List<String> fluttertopic=["Scaffold","StatelessWidget","StatefullWidget","Body"];
    List<String>dartcodes =['''import 'dart:io';
class parent{
int x = 10;
String str ='kalyani';
void parentdata(){
print(x);
print(this.hashCode);
  }
}
class child extends parent{
int x = 20;
void childdata(){
print(x);
print(this.hashCode);
 }
}
void main(){
child c = new child();
c.childdata();
c.parentdata();
}''','''import 'dart:io';
abstract class parent{
 void education();
 void marry(){
 print('kalyani');
  }
}

class child extends parent{
 void education(){
 print('MCA');
 }
}

void main(){
 child c = new child();
 c.education();
 c.marry();
}'''];
  List<String>fluttercodes =['''return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 74, 140, 247),
        foregroundColor: Colors.white,
        title: Text("This is appbar"),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search),),
        ],
      ),
       body: SizedBox(
        child: Container(
          height:300,
          width:400;
          color:  Colors.black,
        ),),
      );''','''import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}'''];
 Widget reusablecontainer(BuildContext context,String name,String imgurl,List topiclist,List codes){
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>topics(name:name,topic:topiclist,codes:codes,)),);
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      reusablecontainer(context,"Dart","./images/dart.png",darttopic,dartcodes),
                      reusablecontainer(context,"C#","./images/csharp.png",darttopic,dartcodes),
                      reusablecontainer(context,"Java","./images/java.png", darttopic,dartcodes),
                      //reusablecontainer(context,"C","./images/c.jpg", darttopic,dartcodes),
                    ],
                  ),
                ),
                 Row(
                  children: [
                     Container(
                      child: Text("Framework",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.brown),),
                      margin: EdgeInsets.only(top: 40,left: 30,),
                    ),
                  ],
                               ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                         children: [
                         reusablecontainer(context,"Flutter","./images/flutter.png", fluttertopic,fluttercodes),
                         reusablecontainer(context,"ASP.Net","./images/asp.net.jpg", darttopic,dartcodes),
                         reusablecontainer(context,"spring","./images/spring-framework.png", darttopic,dartcodes),
                      // reusablecontainer(context,"Hibernate","./images/hibernate.png", darttopic),
                    ],
                  ),
                ),
                 Row(
                  children: [
                     Container(
                      child: Text("Database",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.brown),),
                      margin: EdgeInsets.only(top: 40,left: 30,),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      reusablecontainer(context,"SQL Server","./images/sqlserver.png", darttopic,dartcodes),
                      reusablecontainer(context,"MongoDB","./images/mongodb.png", darttopic,dartcodes),
                      reusablecontainer(context,"MYSQL","./images/MYSQL.png", darttopic,dartcodes),
                     // reusablecontainer(context,"MSAccess","./images/Msaccess.png", darttopic),
                    ],
                  ),
                ),
                Row(
                  children: [
                     Container(
                      child: Text("Tools",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.brown),),
                      margin: EdgeInsets.only(top: 40,left: 30,),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      reusablecontainer(context,"Visual Studio Code","./images/ms-visual-studio.jpg", darttopic,dartcodes),
                      reusablecontainer(context,"MongoDB Compass","./images/mongodb-compass.png", darttopic,dartcodes),
                      reusablecontainer(context,"Visual Studio","./images/vscode.jpg", darttopic,dartcodes),
                     // reusablecontainer(context,"Git","./images/git.png", darttopic),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        
      ),
      
    );
  }
}