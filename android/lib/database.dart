import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class database extends StatefulWidget {
  const database({Key? key}):super(key: key);

  @override
  State<database> createState() => _databaseState();
}

class _databaseState extends State<database> {
  Query dbRef = FirebaseDatabase.instance.ref().child("students");

Widget view(  {required Map student}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange,
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                Text(
                  student["name"]
                ),
                const SizedBox(height: 7,),
                Text(
                  student["school"]
                ),
              ],
            ),

          ),
          Row(

            children: [
              // Spacer( ),
              SizedBox(width:MediaQuery.of(context).size.width-162,),
              Text(
                student["dob"]
              )
            ],
          )
        ],
      ),

    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:const Text("Firestorm Database"),
      ),
      body: Container(
        height: double.infinity,
        child: FirebaseAnimatedList(
            query: dbRef,
            itemBuilder:(BuildContext context,DataSnapshot snapshot,Animation<double> animation, int index ){
              Map student= snapshot.value as Map;
              student["key"]=snapshot.key;

         return view(student: student);

            }


        )



      ),
    );
  }

}