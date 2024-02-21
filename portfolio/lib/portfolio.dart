import 'package:flutter/material.dart';

class portfolio extends StatefulWidget {
  portfolio({super.key});

  @override
  State<portfolio> createState() => __portfolioState();
}

class __portfolioState extends State<portfolio> {
  int count=0;
  void clickfun(){
    setState(() {
      count=count+1;
    });
  }
  Text printname(){
     if(count>=1){
         return Text("Kalyani Waghulkar",
                    style: TextStyle(fontSize: 30,fontFamily:"Lucida Calligraphy",color: Colors.brown.shade900,fontWeight: FontWeight.bold,),);
     }
     else{
           return Text("");
     }
  }
  Container printimg(){
    if(count>=2){
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
    else{
      return Container();
    }
  }
   Text printlang( BuildContext context, String lang,int chapcount){
     if(count>=chapcount){
         return Text(lang,
                    style: TextStyle(fontSize: 25,fontFamily:"Lucida Calligraphy",color: Colors.brown.shade800,fontWeight: FontWeight.w500),);
     }
     else{
           return Text("");
     }
  }
   Container reusablecontainer(BuildContext context,String imgurl,int lcount){
      
        if(count >= lcount){
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
          else{
            return Container();
          }
          
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text("Portfolio"),
       ),
       floatingActionButton: IconButton(
        onPressed: (){
         clickfun();
        
       }, 
        color: Colors.blue,
       icon:Icon(Icons.forward),
       ),
       body: SizedBox(
      
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
                          printlang(context,"Languages",3), ],),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              reusablecontainer(context, "./images/dart.png",4),
                              reusablecontainer(context, "./images/csharp.png",5),
                              reusablecontainer(context, "./images/java.png",6),
                              reusablecontainer(context, "./images/c.jpg",7)
                            ],
                          ),
                        ),
                         SizedBox(height: 20,),
                         Row(
                        children: [
                          SizedBox(width: 10,),
                          printlang(context,"Databases",8), ],),
                           SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              reusablecontainer(context, "./images/MYSQL.png",9),
                              reusablecontainer(context, "./images/sqlserver.png",10),
                              reusablecontainer(context, "./images/Msaccess.png",11),
                              reusablecontainer(context, "./images/mongodb.png",12),
                            ],
                          ),
                        ),
                  ],
               ),
             ),
       ),
    );
  }
}