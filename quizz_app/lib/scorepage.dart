import 'package:flutter/material.dart';
import 'package:quizz_app/quiz.dart';

class scorepage extends StatelessWidget {
  int ? score;
  List? questionlist;
   scorepage({super.key,this.score,this.questionlist});
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
        return Text("$score / ${questionlist!.length}", style: TextStyle(fontSize: 40,),);
   }
   Container printimage(){
      if(score! >= 5){
        return  Container(
                    height: 300,
                    width: 300,
                    color: Colors.white,
                    child: Image.asset("./image/firework.gif",fit: BoxFit.fill,),
                  );

      }
      else{
         return  Container(
                    height: 300,
                    width: 300,
                    color: Colors.white,
                    child: Image.asset("./image/betterluck.png",fit: BoxFit.fill,),
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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                  SizedBox(height: 30,),
                 printimage(),
                   SizedBox(height: 40,),
                    printwish(),
                  SizedBox(height: 40,),
                   printscore(),
                   SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>quizdemo()));
                  }, child: Text("Try Again",
                     style: TextStyle(fontSize: 25,),
                          
                  ),
                  style: ButtonStyle(
                    backgroundColor:MaterialStatePropertyAll(Color.fromARGB(73, 18, 15, 182),),

                    fixedSize: MaterialStatePropertyAll(Size(300,40)),),
                  ),
       
        ],
        ),
      ),
    );
  }
}