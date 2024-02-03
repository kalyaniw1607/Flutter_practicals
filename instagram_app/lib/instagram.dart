import 'package:flutter/material.dart';

class insta extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Instagram",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.normal,fontSize: 30,fontFamily:"Roboto",color: Colors.black),),
        actions: [
          IconButton(onPressed: (){},
          icon: Icon(Icons.favorite_border,color: Colors.black,),),
          IconButton(onPressed: (){}, icon:Icon(Icons.message_outlined,color: Colors.black,),),
        ],
       ),
       body: SizedBox(
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
                      margin: EdgeInsets.only(top: 10,left: 8),
                           child: CircleAvatar(
                           radius: 50,
                            backgroundImage: AssetImage("./images/k2.jpg"),
                      
                    ),
                    decoration: BoxDecoration(
                       border:Border.all(width: 4,color: Colors.green,style: BorderStyle.solid,),
                        borderRadius: BorderRadius.circular(200.0),
                        //color: Colors.black,
                      ),
                   ),
                     Container(
                        margin: EdgeInsets.only(top: 10,left: 8),
                   child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("./images/shahrukh.jpg"),
                      
                    ),
                    decoration: BoxDecoration(
                        border:Border.all(width: 4,color: Color.fromARGB(255, 179, 18, 71),style: BorderStyle.solid,),
                        borderRadius: BorderRadius.circular(200.0),
                        //color: Colors.black,
                      ),
                   ),
                     Container(
                        margin: EdgeInsets.only(top: 10,left: 8),
                   child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("./images/jadeja.jpg"),
                      
                    ),
                    decoration: BoxDecoration(
                        border:Border.all(width: 4,color: Color.fromARGB(255, 179, 18, 71),style: BorderStyle.solid,),
                        borderRadius: BorderRadius.circular(200.0),
                        //color: Colors.black,
                      ),
                   ),
                     Container(
                        margin: EdgeInsets.only(top: 10,left: 8),
                   child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("./images/chennai.jpg"),
                      
                    ),
                    decoration: BoxDecoration(
                        border:Border.all(width: 4,color: Color.fromARGB(255, 179, 18, 71),style: BorderStyle.solid,),
                        borderRadius: BorderRadius.circular(200.0),
                        //color: Colors.black,
                      ),
                   ),
                  ],
                ),
                Row(
                  
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10,left: 8),
                   child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("./images/shahrukh.jpg"),
                      
                    ),
                    decoration: BoxDecoration(
                        border:Border.all(width: 3,color: Color.fromARGB(255, 179, 18, 71),style: BorderStyle.solid,),
                            borderRadius: BorderRadius.circular(200.0),
                        //color: Colors.black,
                      ),
                   ),
                    Container(
                       child: Text("iamsrk",style: TextStyle(color: Colors.black,fontSize: 20),),
                      margin: EdgeInsets.only(top: 10,left: 8),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child:
                        IconButton(onPressed: (){}, icon:Icon(Icons.verified,color: Colors.blue,),),
                      ),
                       
                    SizedBox(width: 155,),
                    IconButton(onPressed: (){}, icon:Icon(Icons.more_vert,color: Colors.black,),),
                  ],
                ),
                Row(
                   children: [
                    Container(
                      height: 400,
                      width: 450,
                      color: Colors.black,
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset("./images/s2.jpg",fit: BoxFit.fill,),
                    ),
                   ],
                ),
                Row(
                  children: [
                   
                      
                   IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border_outlined,color: Colors.black,),),
                   IconButton(onPressed: (){}, icon:Icon(Icons.comment_outlined,color: Colors.black,),),
                  IconButton(onPressed: (){}, icon:Icon(Icons.share_sharp,color: Colors.black,),),
                  SizedBox(width: 190,),
                   
                    IconButton(onPressed: (){}, icon:Icon(Icons.save_alt,color: Colors.black,) ),
                  
                  ],
                ),
                Row(
                  children: [
                    Container( margin: EdgeInsets.only(left: 8),
                      child: Text("iamsrk",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text("Capion is here",style: TextStyle(fontSize: 18,color: Colors.black),),
                    ),
                  ],
                ),
                Row(
                  
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10,left: 8),
                   child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("./images/k2.jpg"),
                      
                    ),
                    decoration: BoxDecoration(
                        border:Border.all(width: 3,color: Colors.green,style: BorderStyle.solid,),
                        borderRadius: BorderRadius.circular(200.0),
                        //color: Colors.black,
                      ),
                   ),
                    Container(
                       child: Text("Kalyaniw1607",style: TextStyle(color: Colors.black,fontSize: 20),),
                      margin: EdgeInsets.only(top: 10,left: 8),
                      ),
                    SizedBox(width: 140,),
                    IconButton(onPressed: (){}, icon:Icon(Icons.more_vert,color: Colors.black,),),
                    
                  ],
                ),
                Row(
                   children: [
                    Container(
                      height: 400,
                      width: 450,
                      color: Colors.black,
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset("./images/k2.jpg",fit: BoxFit.cover,),
                    ),
                   ],
                ),
                Row(
                  children: [
                   
                      
                   IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border_outlined,color: Colors.black,),),
                   IconButton(onPressed: (){}, icon:Icon(Icons.comment_outlined,color: Colors.black,),),
                  IconButton(onPressed: (){}, icon:Icon(Icons.share_sharp,color: Colors.black,),),
                  SizedBox(width: 190,),
                   
                    IconButton(onPressed: (){}, icon:Icon(Icons.save_alt,color: Colors.black,) ),
                  
                  ],
                ),
                Row(
                  children: [
                    Container( margin: EdgeInsets.only(left: 8),
                      child: Text("Kalyaniw1607",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text("Leaving a little sparkle wherever I go... ",style: TextStyle(fontSize: 18,color: Colors.black),),
                    ),
                  ],
                ),

                
               ],
            ),
             ),
          ),
       ),
    );
  }
}