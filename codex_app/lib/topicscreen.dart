import 'package:codex_app/codescreen.dart';
import 'package:flutter/material.dart';


class topics extends StatelessWidget {
  String ? title1;
  String ? topic1;
  String ? topic2;
  String ? topic3;
  String ? topic4;
  String ? description;
   topics({super.key,this.title1,this.topic1,this.topic2,this.topic3,this.topic4,this.description});

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
                      if("$topic1"=="Abstract Class"){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>coding(lang:"Abstract Class",
                     info:"Abstract class contains method which is abstract method. It only has declaration.It's implementation will be in derived class.It can have normal method as well as abstract method" ,
                      code:'''import 'dart:io';
  abstract class parent{"
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
   }''',),
                      ),
                    
                      );
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>coding(lang:"$topic1",
                     info:"The Scaffold is a widget in Flutter used to implements the basic material design visual layout structure." ,
                      code:'''return Scaffold(
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
          
        ),),
      );'''),),);
                      }
                    
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                       margin: EdgeInsets.only(left: 30,top:30,),
                       padding: EdgeInsets.only(left: 60,top:7),
                       child: Text("$topic1",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Color.fromARGB(255, 74, 140, 247),fontFamily:"Times New Roman"),),
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
                     child: Text("$topic2",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Color.fromARGB(255, 74, 140, 247),fontFamily:"Times New Roman"),),
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
                     child: Text("$topic3",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Color.fromARGB(255, 74, 140, 247),fontFamily:"Times New Roman"),),
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
                     child: Text("$topic4",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Color.fromARGB(255, 74, 140, 247),fontFamily:"Times New Roman"),),
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