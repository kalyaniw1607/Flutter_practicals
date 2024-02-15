import 'package:flutter/material.dart';

class login extends StatelessWidget {
   login({super.key});
 final usernamecontroller = TextEditingController();
 final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(164, 187, 222, 251),
        body: SafeArea(
          child:Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.all(30),
                  child: Image.asset("./images/codex.jpg",fit: BoxFit.fill,),
                ),
                Text("welcome to Codex",style: TextStyle(fontSize: 20,fontFamily: "",fontWeight: FontWeight.w700, color: Colors.brown),),
                SizedBox(height: 30,),
                Container(
                  width: 300,
                  child: TextField(
                    controller: usernamecontroller,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide( 
                            
                            color: Colors.blue.shade900,
                           ),
                           
                      ),
                       focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      )
                     ),
                     
                      hintText: "User Name",
                    ),
                  ),
                ),
                 SizedBox(height: 30,),
               Container(
                  width: 300,
                  child: TextField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide( 
                            color: Colors.blue.shade900,
                           ),
                           
                      ),
                     focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      )
                     ),
                      hintText: "Password",
                    ),
                  ),
                ),
                 SizedBox(height: 30,),
                 Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(onPressed: (){}, child: Text("LOGIN"), ),
                 ),
                 Row(
                   children: [
                    Container(
                     margin:EdgeInsets.only(top: 20,left: 50),
                     padding: EdgeInsets.only(left: 155),
                  child:  Text("Forgot Password?",style: TextStyle(fontSize: 15,fontFamily: "",fontWeight: FontWeight.w200,),)
                    ),
                    
                   ],
                 ),
                 SizedBox(height: 20,),
                 Text("OR",style: TextStyle(fontSize: 20,fontFamily: "",fontWeight: FontWeight.w700,color: Colors.brown),),
                  SizedBox(height: 30,),
                 Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                     // color: const Color.fromARGB(185, 158, 158, 158),
                      margin: EdgeInsets.only(left: 60),
                     // child: Image.asset("./images/google.png",fit: BoxFit.fill,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: const Color.fromARGB(185, 158, 158, 158),
                        image: DecorationImage(image:AssetImage("./images/google.png",)),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      //color: Colors.amber,
                       margin: EdgeInsets.only(left: 60),
                      // child: Image.asset("./images/apple.jpg",fit:BoxFit.fill),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        // color: Colors.blue.shade100,
                        image: DecorationImage(image:AssetImage("./images/apple.jpg",)),
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