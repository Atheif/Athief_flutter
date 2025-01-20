import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget{

  List data =[
    {
      "Name":"Athief",
      "Count":"2",
      "Time" :"8:00",
      "Message":"hi bro",
      "image":"assets/image/download.jpg",
    },
    {
      "Name":"Muzzu",
      "Count":"2",
      "Time" :"8:00",
      "Message":"hi bro",
      "image":"assets/image/download.jpg",
    },
    {
      "Name":"nawaz",
      "Count":"2",
      "Time" :"8:00",
      "Message":"happy birthday devena",
      "image":"assets/image/download.jpg",
    },
    {
      "Name":"Adil",
      "Count":"2",
      "Time" :"8:00",
      "Message":"hi bro",
      "image":"assets/image/download.jpg",
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(


          itemCount: data.length,
          itemBuilder: (context, index){
            return Container(
                color: Colors.white,
                padding: const EdgeInsets.all(28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            radius: 100,
                            child: Image.asset(data[index]["image"],fit:BoxFit.contain,),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start ,
                          children: [
                            Text(data[index]["Name"],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),

                            ),

                            Text(data[index]["Message"]),

                          ],
                        ),

                      ],
                    ),
                    Column(
                      children: [


                        Text("8:00"),

                        Container(
                          alignment: Alignment.center,
                          child: Text("2",
                            style:TextStyle(
                                color: Colors.white
                            ) ,
                          ),

                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),

                      ],
                    )

                  ],
                )
            );
          }),



    );
  }
}
