import 'package:flutter/material.dart';

class Todolist extends StatefulWidget {
   Todolist({super.key});

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  List<String> itemlist=["Item1","Item2","Item3","Item4","Item5"];
  String name ="";
  int deleteat =0;
  void edittodolist(int index){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        height: 200,
        width: 200,
        child: Column(
          children: [
            TextFormField(
              initialValue: itemlist[index],
              decoration: InputDecoration(
                label: Text(itemlist[index]),
              ),
              onChanged: (value) {
                itemlist[index]=value;
                name=value;
                deleteat=index+1;
              },
            ),
            SizedBox(height: 30,),
           Row(
            children: [
              SizedBox(width: 30,),
                 ElevatedButton(onPressed: (){
              setState(() {
                
              });
              Navigator.pop(context);
            }, child: Text("Save")),
             SizedBox(width: 30,),
             ElevatedButton(onPressed: (){
              itemlist.add(name);
              setState(() {
                
              });
              Navigator.pop(context);
            }, child: Text("Add")),
             SizedBox(width: 30,),
             ElevatedButton(onPressed: (){
              itemlist.removeAt(deleteat);
              setState(() {
                
              });
              Navigator.pop(context);
            }, child: Text("Delete")),
            ],
           ),
           
          ],
        ),
      );
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text("To Do List"),
              ),
            
              body: Center(
                child: ListView.builder(
                  itemCount: itemlist.length,
                  itemBuilder: (context, index) {
                     return InkWell(
                        onTap: () {
                          edittodolist(index);
                        },
                        
                       child: Container(
                        height: 60,
                        width: 100,
                        margin: EdgeInsets.all(20),
                        color: Colors.lightGreen.shade500,
                        child: Center(child: Text(itemlist[index],style: TextStyle(fontSize: 20,color: Colors.white),)),
                       ),
                     );
                  },
                  ),
                 
              ),
    );
  }
}