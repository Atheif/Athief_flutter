import 'dart:io';
import 'dart:math';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'image_picker2.dart';

class SaveImage extends StatefulWidget {
  const SaveImage({super.key});

  @override
  State<SaveImage> createState() => _SaveImageState();
}

class _SaveImageState extends State<SaveImage> {
  File? image;
  UploadTask? uploadTask;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FireBase Storage"),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap:() async{
                  var xfile = await ImagePicker().pickImage(source: ImageSource.values[Random().nextInt(2)]);

                  if(xfile!=null){
                    image =File(xfile.path);
                    setState(() {

                    });
                  }
                  },
                child: const CircleAvatar(
                  radius: 80,
                  child: Icon(Icons.camera_alt,size: 50,),
                ),
              ),
            ),
            const SizedBox(height: 30,),
            if(image!=null)
              Image.file(image!, height: 100,),
            ElevatedButton(onPressed:() async {
            final ref=   FirebaseStorage.instance.ref().child("muzamil/${image!.path}");
           uploadTask= ref.putFile(File(image!.path));
           final snapshot= await uploadTask!.whenComplete(()=> null);
           final downloadUrl= await snapshot.ref.getDownloadURL();
           log("URL: $downloadUrl" as num);
            }, child:const Text("Upload"))
          ],
        ),
      ),
    );
  }
}
