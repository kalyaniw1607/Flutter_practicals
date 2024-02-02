import 'package:flutter/material.dart';

class codex extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Codex"),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search),),
        ],
      ),
      body:SizedBox(
        height: double.infinity,
        width: double.infinity,
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
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("./images/dart.jpg",fit:BoxFit.fill),
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
                      child: Image.asset("./images/java.jpg",fit:BoxFit.fill),
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
                      child: Image.asset("./images/c.png",fit:BoxFit.fill),
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
                    Container(
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
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("./images/asp.net.jpg",fit:BoxFit.fill),
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
          
      )  
    );
  }
}