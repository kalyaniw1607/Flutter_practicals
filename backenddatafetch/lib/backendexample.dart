import 'package:backenddatafetch/second.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class datafetch extends StatefulWidget {
   datafetch({super.key});

  @override
  State<datafetch> createState() => _datafetchState();
}

class _datafetchState extends State<datafetch> {
  String name="kalyani";
  var realdata;
  void fetchdata() async{
       var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"),);
      realdata =json.decode(response.body);
       name = realdata[0]['name'];
       setState(() {
         
       });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init");
    fetchdata();
  }
  
  @override
  Widget build(BuildContext context) {
    print("build method");
    return Scaffold(
      appBar: AppBar(
        title: Text("Data_fetch_example"),
      ),
      body:Center(
        child: ListView.builder(
          itemCount:realdata.length ,
          itemBuilder:(context, index) {
               return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                 child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>secondscreen(dataindex:index,realdata:realdata)));
                      },
                      child: Container( 
                        height: 60,
                                      width: 250,
                                      margin: EdgeInsets.all(20),
                                      color: Colors.red.shade100,
                                      child: Center(child: Text("${realdata[index]['name']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.blueGrey.shade900,fontFamily: "Arial"),)),),
                    ),
                  ],
                 
                 ),
               );
          },
          ),
          ),
    );

  }
}