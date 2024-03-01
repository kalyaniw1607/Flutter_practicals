import 'package:codex/codescreen.dart';
import 'package:flutter/material.dart';


class topicscreen extends StatelessWidget {
   List ? datalist;
   int?dataindex;
   topicscreen({super.key,this.datalist,this.dataindex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 74, 140, 247),
        foregroundColor: Colors.white,
        title: Text("${datalist![dataindex!]["subject"]}"),
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
                         Color.fromARGB(50, 68, 137, 255),
                         Color.fromARGB(50, 68, 137, 255),
                         Colors.white24,
                         Colors.white24,
                         Color.fromARGB(50, 68, 137, 255),
                         Color.fromARGB(50, 68, 137, 255),
                     ], 
                    ),
             ),
             child: ListView.builder(
              itemCount: datalist![dataindex!]["Topics"].length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Codescreen(datalist: datalist,dataindex: dataindex,)));
                  },
                  child: Container(
                    height: 80,
                    width: 200,
                   
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                             color: Color.fromARGB(228, 187, 222, 251),
                                boxShadow:[
                                BoxShadow(
                                  color:  Color.fromARGB(255, 126, 124, 124),
                                  offset: Offset(10, 10),
                                  blurRadius: 10,
                                ),
                                ]
                            ),
                    child: Center(child: Text("${datalist![dataindex!]["Topics"][index]}",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700,color: Colors.brown),)),
                  ),
                );
              },),
           ),
        
      ),
    );
  }
}