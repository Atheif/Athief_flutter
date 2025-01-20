import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'apgschool.dart';
import 'push.dart';
import 'package:permission_handler/permission_handler.dart';


Future<void> requestCameraPermission() async {
  PermissionStatus status = await Permission.camera.request();

  if (status.isGranted) {
    print("Camera permission granted");
  } else if (status.isDenied) {
    print("Camera permission denied");
  } else if (status.isPermanentlyDenied) {
    print("Camera permission permanently denied");
    openAppSettings();
  }
}




Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Firebase.initializeApp(
      name: 'otp-authedication',
      options:  const FirebaseOptions(
        apiKey:" AIzaSyBHYMRS6N2sMfEyobz9cYNewQtLcVmn0N4",
        appId:"1:834294390832:android:8d22471cdb836d4f8c0df5 ",
        messagingSenderId: "834294390832",
        projectId: "otp-authedication",
        storageBucket: "otp-authedication.firebasestorage.app",
        authDomain: "otp-authedication.firebaseapp.com",
      //  databaseURL: "https://otp-authedication-default-rtdb.firebaseio.com/"
      ));

  await NotificationService.instance.initialize();



 // NotificationService.NotificationService();

  runApp( MaterialApp(
      debugShowCheckedModeBanner: false,
       home:   MyApp()
  ));
}

class push extends StatefulWidget {
  const push({super.key});

  @override
  State<push> createState() => _pushState();
}

class _pushState extends State<push>{
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Push Notification",
            style: TextStyle(
              fontSize: 25,

            ),
          ),
        ),
      ),
    );
  }
}

