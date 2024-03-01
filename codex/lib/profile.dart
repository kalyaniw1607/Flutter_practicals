import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  String?name;
   profile({super.key,this.name});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  
  Text printname(){
    
         return Text("${widget.name}",
                    style: TextStyle(fontSize: 30,fontFamily:"Lucida Calligraphy",color: Colors.brown.shade900,fontWeight: FontWeight.bold,),);
    
  }
  Container printimg(){
    
        return Container(
          height: 150,
          width: 150,
                      decoration: BoxDecoration(
                       border:Border.all(width: 2,color: Colors.brown.shade500,style: BorderStyle.solid,),
                        borderRadius: BorderRadius.circular(200.0),
                        //color: Colors.black,
                        image: DecorationImage(image: AssetImage("./images/profile.jpg"),),
                      ),
                     );
    
  }
   Text printlang(String lang){
     
         return Text(lang,
                    style: TextStyle(fontSize: 25,fontFamily:"Lucida Calligraphy",color: Colors.brown.shade800,fontWeight: FontWeight.w500),);
     
  }
   Container reusablecontainer(String imgurl){
      
        
           return Container(
                          height: 100,
                            width: 100,
                            
                            margin: EdgeInsets.only(top:20,left: 10,bottom: 10,right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
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
                          
                        
           );
          
   }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text("${widget.name}"),
       ),
       
       body: Container(
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
         child: SizedBox(
             
            width: double.infinity,
            height: double.infinity,
            
               child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                 child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        SizedBox(height: 30,),
                        printname(),
                        SizedBox(height: 20,),
                         printimg(),
                         SizedBox(height: 20,),
                         Row(
                          children: [
                            SizedBox(width: 10,),
                            printlang("Languages"), ],),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                reusablecontainer( "./images/dart.png"),
                                reusablecontainer( "./images/csharp.png"),
                                reusablecontainer( "./images/java.png"),
                                reusablecontainer( "./images/c.jpg"),
                              ],
                            ),
                          ),
                           SizedBox(height: 20,),
                           Row(
                          children: [
                            SizedBox(width: 10,),
                            printlang("Databases"), ],),
                             SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                reusablecontainer( "./images/MYSQL.png"),
                                reusablecontainer( "./images/sqlserver.png"),
                                reusablecontainer( "./images/Msaccess.png"),
                                reusablecontainer( "./images/mongodb.png"),
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