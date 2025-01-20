import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class image extends StatefulWidget {
  image({Key? key}) : super(key: key);

  @override
  _imageState createState() => _imageState();
}

class _imageState extends State<image> {
 // String _selectedImagePath = '';
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
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 32,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                (context);
              },
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xffFDCF09),
                child: _photo != null
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.file(
                    _photo!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitHeight,
                  ),
                )
                    : Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50)),
                  width: 100,
                  height: 100,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            uploadImageToFirebase();

          }, child: const Text("Upload",style: TextStyle(color: Colors.green),))

        ],
      ),
    );
  }
  void _showImagePickerOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(CupertinoIcons.photo),
                title: const Text('Pick from gallery'),
                onTap: () {
                  (ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.camera),
                title: const Text('Take a photo'),
                onTap: () {
                  (ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}


