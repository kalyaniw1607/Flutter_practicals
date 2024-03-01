import 'package:codex/home.dart';
import 'package:codex/quizscreen.dart';
import 'package:flutter/material.dart';


class scorepage extends StatelessWidget {
  int ? score;
  List? datalist;
  int?dataindex;
   scorepage({super.key,this.score,this.datalist,this.dataindex});
   Text printwish(){
        if(score! >= 5){
       return Text(
        "Congratulations",
        style: TextStyle(fontSize: 40,color: Color.fromARGB(215,190,105,0),fontFamily:"Lucida Calligraphy",),
        );
        }
        else{
             return Text("");
        }
   }
   Text printscore(){
        return Text("$score / ${datalist![dataindex!]["quiz"].length}", style: TextStyle(fontSize: 40,),);
   }
   Container printimage(){
      if(score! >= 2){
        return  Container(
                    height: 300,
                    width: 300,
                    color: Colors.white,
                    child: Image.asset("./images/firework.gif",fit: BoxFit.fill,),
                  );

      }
      else{
         return  Container(
                    height: 300,
                    width: 300,
                    color: Colors.white,
                    child: Image.asset("./images/betterluck.png",fit: BoxFit.fill,),
                  );
      }
   }

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
       
         appBar: AppBar(
        backgroundColor: Color.fromARGB(172, 223, 64, 251),
        centerTitle: true,
        title: Text("Your score"),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                    SizedBox(height: 30,),
                   printimage(),
                     SizedBox(height: 30,),
                      printwish(),
                    SizedBox(height: 30,),
                     printscore(),
                     SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>quizdemo(dataindex: dataindex,datalist:datalist,)));
                    }, child: Text("Try Again",
                       style: TextStyle(fontSize: 25,),
                            
                    ),
                    style: ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Color.fromARGB(73, 18, 15, 182),),
      
                      fixedSize: MaterialStatePropertyAll(Size(300,40)),),
                    ),
                    SizedBox(height: 30,),
                 ElevatedButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>mainscreen(datalist:datalist,)));
                    }, child: Text("Go To Home",
                       style: TextStyle(fontSize: 25,),
                            
                    ),
                    style: ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Color.fromARGB(73, 18, 15, 182),),
      
                      fixedSize: MaterialStatePropertyAll(Size(300,40)),),
                    ),
          ],
          ),
        ),
      ),
    );
  }
}