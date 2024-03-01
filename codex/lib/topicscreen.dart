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
           child: ListView.builder(
            itemCount: datalist![dataindex!]["Topics"].length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Codescreen(datalist: datalist,dataindex: dataindex,)));
                },
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.blue,
                  margin: EdgeInsets.all(30),
                  child: Center(child: Text("${datalist![dataindex!]["Topics"][index]}")),
                ),
              );
            },),
        
      ),
    );
  }
}