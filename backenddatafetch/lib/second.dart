import 'package:flutter/material.dart';

class secondscreen extends StatelessWidget {
  int ?dataindex;
  var realdata;
   secondscreen({super.key,this.dataindex,this.realdata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${realdata[dataindex]['name']}"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.black,width: 1,style: BorderStyle.solid),
                   
                 ),
              child: SingleChildScrollView(
                 scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text("Users Info :", style: TextStyle(fontSize: 22,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.teal,)),
                     SizedBox(height: 20,),
                      Text("Username : ${realdata[dataindex]['username']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                      Text("Email : ${realdata[dataindex]['email']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),              
                      SizedBox(height: 20,),
                       Text("Address :", style: TextStyle(fontSize: 22,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.teal,)),
                        SizedBox(height: 20,),
                       Text("Street: ${realdata[dataindex]['address']['street']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)), 
                       Text("Suite: ${realdata[dataindex]['address']['suite']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                        Text("City: ${realdata[dataindex]['address']['city']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                         Text("Zipcode: ${realdata[dataindex]['address']['zipcode']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                          Text("Geo: ",style:TextStyle(fontSize: 22,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                      
                       Text("Lat: ${realdata[dataindex]['address']['geo']['lat']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                        Text("Lan: ${realdata[dataindex]['address']['geo']['lng']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                    SizedBox(height: 20,),
                    Text("Contact Info :", style: TextStyle(fontSize: 22,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.teal,)),
                     SizedBox(height: 20,),
                       Text("Phone: ${realdata[dataindex]['phone']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                       Text("Website: ${realdata[dataindex]['website']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                       
                        SizedBox(height: 20,),
                        Text("Company Info :", style: TextStyle(fontSize: 22,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.teal,)),
                     SizedBox(height: 20,),
                       
                       Text("Company Name: ${realdata[dataindex]['company']['name']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                      Text("catchPhrase: ${realdata[dataindex]['company']['catchPhrase']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                       Text("Bs: ${realdata[dataindex]['company']['bs']}",style:TextStyle(fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold,color:Colors.blueGrey,)),
                  ],
                          
                ),
              ),
            );
          },),
      ),
    );
  }
}