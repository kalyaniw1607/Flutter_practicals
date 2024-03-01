
import 'package:codex/profile.dart';
import 'package:codex/topicscreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class mainscreen extends StatelessWidget {
  List?datalist;
  int dataindex=0;
  String?name;
   mainscreen({super.key,this.datalist,this.name});

    Widget reusablecontainer(BuildContext context,String name,String imgurl,int dataindex){
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>topicscreen(datalist:datalist,dataindex:dataindex)));
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
   List cimges=["./images/carousel1.jpg","./images/carousel2.jpg","./images/carousel3.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 74, 140, 247),
        foregroundColor: Colors.white,
        title: Text("Codex"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>profile(name:name)));
          }, icon:Icon(Icons.person),),
          IconButton(onPressed: (){}, icon:Icon(Icons.search),),
        ],
     ),
     body:SingleChildScrollView(
      scrollDirection: Axis.vertical,
       child: Column(
         children: [
           Container(
          decoration: BoxDecoration(
                    gradient: LinearGradient(
                       begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      colors: <Color>[
                         Color.fromARGB(78, 68, 137, 255),
                         Color.fromARGB(78, 68, 137, 255),
                         Colors.white24,
                         Colors.white24,
                         Color.fromARGB(78, 68, 137, 255),
                         Color.fromARGB(78, 68, 137, 255),
                     ], 
                    ),
             ),
             
            child: Container(
              height: 250,
              child: CarouselSlider(
                items: cimges.map(
                  (Element) => Container(
                          height: 300,
                          width: 600,
                          margin: EdgeInsets.all(10),
                          color: Colors.grey,
                          child: Image.asset(Element,fit: BoxFit.cover,),
                )).toList(), 
                options: CarouselOptions(
                  
                  autoPlay: true,
                  autoPlayCurve: Curves.bounceIn,
                  aspectRatio: 16/9,
                  initialPage: 0,
                  reverse: false,autoPlayInterval: Duration(seconds: 2),
                )),
            ),
           ),
            Container(
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
                            reusablecontainer(context,"Dart","./images/dart.png",dataindex),
                            reusablecontainer(context,"C#","./images/csharp.png",dataindex),
                            reusablecontainer(context,"Java","./images/java.png",dataindex),
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
                               reusablecontainer(context,"Flutter","./images/flutter.png",dataindex+1),
                               reusablecontainer(context,"ASP.Net","./images/asp.net.jpg",dataindex),
                               reusablecontainer(context,"spring","./images/spring-framework.png",dataindex),
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
                      reusablecontainer(context,"SQL Server","./images/sqlserver.png", dataindex),
                      reusablecontainer(context,"MongoDB","./images/mongodb.png", dataindex),
                      reusablecontainer(context,"MYSQL","./images/MYSQL.png",dataindex),
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
                      reusablecontainer(context,"Visual Studio Code","./images/ms-visual-studio.jpg", dataindex),
                      reusablecontainer(context,"MongoDB Compass","./images/mongodb-compass.png", dataindex),
                      reusablecontainer(context,"Visual Studio","./images/vscode.jpg", dataindex),
                     // reusablecontainer(context,"Git","./images/git.png", darttopic),
                    ],
                  ),),
                  ],
              ),
             ),
           ),
         
           
         ],
       ),
     ),
    );    
  }
}