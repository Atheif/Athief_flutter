import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:login_page/OTP_PAGE.dart';
// import 'package:login_page/otputh.dart';

import 'otputh.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({super.key});

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Auth"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: phone,
              decoration: InputDecoration(
                  hintText: "Enter Phone Number",
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
                await FirebaseAuth.instance.verifyPhoneNumber(
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException ex) {},
                    codeSent: (String verificationid, int? resendtoken) {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Otpscreen(verificationid: verificationid)));
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                    phoneNumber: phone.text.toString());
              },
              child: Text("Verify phone Number"))
        ],
      ),
    );
  }
}
