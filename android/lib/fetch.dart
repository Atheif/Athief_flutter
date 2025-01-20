
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'image_picker.dart';



class Data extends StatefulWidget {
  const Data({super.key});
  @override
  State<Data> createState() => _DataState();
}
class _DataState extends State<Data> {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  File? _photo;
  final ImagePicker _picker = ImagePicker();

  Future imgFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _photo = File(pickedFile.path);
        uploadImageToFirebase();
      } else {
        print('No image selected.');
      }
    });
  }

  Future imgFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _photo = File(pickedFile.path);
        uploadImageToFirebase();
      } else {
        print('No image selected.');
      }
    });
  }

  Future uploadImageToFirebase() async {

    String fileName= DateTime.now().microsecondsSinceEpoch.toString();

    try {
      final ref = firebase_storage.FirebaseStorage.instance
          .ref().child("mypicture/$fileName.png");
      await ref.putFile(_photo!);
      String downloadURL = await ref.getDownloadURL();
      return downloadURL;
    } catch (e) {
      print('error occured');
    }
  }
  @override
  Widget build(BuildContext context) {
    final controller =  Get.put(ImageUploads());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firestore Database"),
        centerTitle: true,
      ),
      body:
      Column(
        children: [
          StreamBuilder(
              stream: FirebaseFirestore.instance.collection("students").snapshots(),
              builder:(context,snapshot){
                 if(snapshot.connectionState==ConnectionState.active){
                   if(snapshot.hasData){
                     return ListView.builder(
                         shrinkWrap: true,
                         itemCount: snapshot.data?.size,
                         itemBuilder: (context,index,){
                       return Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           height: 90,
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Colors.grey,
                           ),

                           child: Row(
                             children: [
                               const Padding(
                                 padding: EdgeInsets.all(10.0),
                                 child: CircleAvatar(
                                  // child: ElevatedButton(onPressed: (){}, child: Icon()),
                                 )
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(3.0),
                                 child: Column(
                                   children: [
                                    Text("${snapshot.data!.docs[index]["name"]}"),
                                     const SizedBox(height: 7,),
                                     Text("${snapshot.data!.docs[index]["school"]}"),
                                     Text("${snapshot.data!.docs[index]["age"]}"),
                                   ],
                                 ),
                               ),
                               Row(
                                 children: [
                                   SizedBox(width:MediaQuery.of(context).size.width-275,),
                                   Text("${snapshot.data!.docs[index]["dob"]}"),

                                 ],
                               ),
                               ElevatedButton(onPressed: (){


                               }, child:Icon(Icons.upload))
                              // :Image(image: image)
                             ],

                           ),
                         ),
                       );
                     });
                   }
                   else if(snapshot.hasError){
                     return Center(child: Text("${snapshot.hasError.toString()}"),);
                   }
                }
                 else{
                   return const Center(child:CircularProgressIndicator(),);
              }
                 return const Center(child: Text("No data found" ),);
              }  ),
        ],
      ),
    );
  }
}
