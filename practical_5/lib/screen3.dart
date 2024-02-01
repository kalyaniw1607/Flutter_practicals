import 'package:flutter/material.dart';

class screen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("screen3"),
      ),
      body: SizedBox(
        height: double.infinity,
        child:SingleChildScrollView(
          scrollDirection: Axis.horizontal,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 400,
               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtCLsvbloSzJFJ-UldPcvk3vHkdOiuazfN2A&usqp=CAU",fit:BoxFit.cover),
               ),
               SizedBox(width: 30,),
                Container(
              height: 400,
              width: 400,
               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8Z8i1Qwuq8BNcCIDQu3DPX6fKw8n0HfCJuH0j108rb4luTEva6mLd_ZLnxYv7DFq-BUM&usqp=CAU",fit:BoxFit.cover),
               ),
               SizedBox(width: 30,),
                Container(
              height: 400,
              width: 400,
               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU6LkHskRRZthHeoBF1cn1Mwj4bEkfoTM1cxM3-x5rkd6A-uk-B5QJP3uNNa4iRzDw61s&usqp=CAU",fit:BoxFit.cover),
               ),
               SizedBox(width: 30,),
                Container(
              height: 400,
              width: 400,
               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGkkhwYZEEE7HNf3zXtYIqvbOjkmXmDvshwnIW6_IsUKrKngb8ipNi7ZU4wZkWYg1-Y0s&usqp=CAU",fit:BoxFit.cover),
               ),
               SizedBox(width: 30,),
          ],
        ),
        ),

      ),
    );
  }
}