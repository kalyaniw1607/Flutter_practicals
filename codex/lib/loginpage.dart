import 'package:codex/home.dart';

import 'package:flutter/material.dart';

class login extends StatelessWidget {
   login({super.key});
   List<Map> alldata=[
       {
        "subject":"Dart",
         "Topics":["Inheritance","Abstract Class","Interface","Mixin"],
         "Code":['''class Car {
// Properties
String? name;
double? price;
}

class Tesla extends Car {
// Method to display the values of the properties
void display() {
  print("Name:");
  print("Price: ");
}
}

class Model3 extends Tesla {
// Properties
String? color;

// Method to display the values of the properties
void display() {
  super.display();
  print("Color: ");
}
}

void main() {
// Create an object of Model3 class
Model3 m = new Model3();
// setting values to the object
m.name = "Tesla Model 3";
m.price = 50000.00;
m.color = "Red";
// Display the values of the object
m.display();
}''',
    '''class Car{
         String color;
         int year;
           void start(){
             print("Car started");
        }  
      }
     class Toyota extends Car
     {
      String model;
       int price;
       void showDetails(){
          print("Model: ");
           print("Price: ");
        }
     }
      void main(){
       var toyota = Toyota();
        toyota.color = "Red";
        toyota.year = 2020;
        toyota.model = "Camry";
        toyota.price = 20000;
       toyota.start();
        toyota.showDetails();
       }''',
       '''class Car {
             // Properties
             String? name;
              double? price;
         }
         class Tesla extends Car {
            // Method to display the values of the properties
             void display() {
                 print("Name: ");
                  print("Price: ");
           }
         }
         void main() {
            // Create an object of Tesla class
          Tesla t = new Tesla();
           // setting values to the object
           t.name = "Tesla Model 3";
           t.price = 50000.00;
            // Display the values of the object
            t.display();
       }'''],
        "quiz":[
          {
              "question":"What is Dart?",
              "options": ["A programming language","A web development ","A database management "," A hardware device"],
               "correct": 0
           },
            {
                 "question":"Which of the following is not a feature of Dart?",
                  "options": ["Type inference","Asynchronous programming","Garbage collection"," Block-level scope"],
                   "correct": 3
             },
              {
                 "question":"What is the syntax for declaring a variable in Dart?",
                  "options": ["const variableName;"," let variableName;","var variableName;","int variableName;"],
                   "correct": 2
               },
        ],
        
       },

       {
        "subject":"Flutter",
         "Topics":["Scaffold","StatelessWidget","StatefullWidget","Body"],
         "Code":['''Widget build(BuildContext context) {
return Scaffold(
	appBar: AppBar(title: const Text('welcome')),
	body: const Center(
	child: Text(
		"Welcome !!!",
		style: TextStyle(
		color: Colors.black,
		fontSize: 40.0,
		),
	),
	),
);
}
''','''import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

void know() {
	// ignore: avoid_print
	print("Button Pressed");
}

@override
Widget build(BuildContext context) {
	return MaterialApp(
	home: Scaffold(
		appBar: AppBar(
		title: const Text('GeeksforGeeks'),
		backgroundColor: Colors.green,
		),
		body: Center(
		child: ElevatedButton(
			style: ButtonStyle(
				backgroundColor: MaterialStateProperty.all(Colors.green)),
			onPressed: know,
			child: const Text(
			' Stateless Widget Tutorial ',
			style: TextStyle(color: Colors.white),
			),
		),
	 ),
		 ),
		),
	),
	);
}
}
''','''Widget build(BuildContext context) {
return Scaffold(
	appBar: AppBar(title: const Text('GeeksforGeeks')),
	body: const Center(
	child: Text(
		"Welcome to GeeksforGeeks!!!",
		style: TextStyle(
		color: Colors.black,
		fontSize: 40.0,
		),
	),
	),
	floatingActionButton: FloatingActionButton(
	elevation: 10.0,
	child: const Icon(Icons.add),
	onPressed: () {
		// action on button press
	},
	),
);
}
'''],
 "quiz":[
          {
              "question":"Which programming language is used to build Flutter applications?",
              "options": ["Kotlin","Dart","Java","Go"],
               "correct": 1
           },
            {
                 "question":"How many types of widgets are there in Flutter?",
                  "options": ["4","6","2","8+"],
                   "correct": 2
             },
              {
                 "question":"Which component allows us to specify the distance between widgets on the screen?",
                  "options": ["SafeArea","SizedBox","table","AppBar"],
                   "correct": 1
               },
        ],
       }
   ];
 final usernamecontroller = TextEditingController();
 final passwordcontroller = TextEditingController();
 String name ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(164, 187, 222, 251),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child:Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(30),
                    child: Image.asset("./images/codex.png",fit: BoxFit.fill,),
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
                      onChanged: (value) {
                        name=value;
                      },
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
                    child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>mainscreen(datalist:alldata,name:name)),);
                    }, child: Text("LOGIN"), ),
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
                        margin: EdgeInsets.only(left: 80),
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
        ),

    );
  }
}