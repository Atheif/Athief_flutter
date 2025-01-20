
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'BottomNavigation.dart';
// import 'package:login_page/BottomNavigation.dart';
// import 'package:login_page/OTP_PAGE.dart';

class Otpscreen extends StatefulWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String verificationid;
  Otpscreen({super.key, required this.verificationid});

  @override
  State<Otpscreen> createState() => _OtpState();
}

class _OtpState extends State<Otpscreen> {
  TextEditingController otp1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("otp Auth"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: otp1,
              decoration: InputDecoration(
                  hintText: "Enter the otp",
                  suffixIcon: Icon(Icons.phone_android),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () async {
                try {
                  PhoneAuthCredential credential =
                      await PhoneAuthProvider.credential(
                          verificationId: widget.verificationid,
                          smsCode: otp1.text.toString());
                  FirebaseAuth.instance.signInWithCredential(credential).then((value){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
                  });
                } catch (ex) {
               log(ex.toString());
                }
              },
              child: Text("Enter Otp"))
        ],
      ),
    );
  }
}
