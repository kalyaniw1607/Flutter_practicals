import 'package:codex_app/codescreen.dart';
import 'package:flutter/material.dart';


class topics extends StatelessWidget {
  String ? title1;
  String ? topicname;
  String ? description;
   topics({super.key,this.title1,this.topicname,this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 74, 140, 247),
        foregroundColor: Colors.white,
        title: Text("$title1"),
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
                    height: 200,
                    width: 300,
                    margin: EdgeInsets.only(left: 30,top:30,),
                    child: Text("$description",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 23,color: Color.fromARGB(255, 128, 69, 46),fontFamily:"Times New Roman"),),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>coding(lang:"Abstract Class",
                     info:"Abstract class contains method which is abstract method. It only has declaration.It's implementation will be in derived class.It can have normal method as well as abstract method" ,
                     
                     ),
                      ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                       margin: EdgeInsets.only(left: 30,top:30,),
                       padding: EdgeInsets.only(left: 60,top:7),
                       child: Text("Abstract class",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Color.fromARGB(255, 74, 140, 247),fontFamily:"Times New Roman"),),
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
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 300,
                     margin: EdgeInsets.only(left: 30,top:40,),
                     padding: EdgeInsets.only(left: 60,top:7),
                     child: Text("Interface",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Color.fromARGB(255, 74, 140, 247),fontFamily:"Times New Roman"),),
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
                    height: 50,
                    width: 300,
                     margin: EdgeInsets.only(left: 30,top:40,),
                     padding: EdgeInsets.only(left: 60,top:7),
                     child: Text("Mixin",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Color.fromARGB(255, 74, 140, 247),fontFamily:"Times New Roman"),),
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
                    height: 50,
                    width: 300,
                     margin: EdgeInsets.only(left: 30,top:40,),
                     padding: EdgeInsets.only(left: 60,top:7),
                     child: Text("Inheritance",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Color.fromARGB(255, 74, 140, 247),fontFamily:"Times New Roman"),),
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
            ],
          ),
        ),
      ),

    );
  }
}