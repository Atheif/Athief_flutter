import 'package:flutter/cupertino.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

Future<void> main() async {
  // Ensure Flutter is able to communicate with Plugins
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Stream video and set the API key for our app.
  StreamVideo(
    'mmhfdzb5evj2',
    user: const User(
      info: UserInfo(
        name: 'John Doe',
        id: 'Durge',
      ),
    ),
    userToken: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL0R1cmdlIiwidXNlcl9pZCI6IkR1cmdlIiwidmFsaWRpdHlfaW5fc2Vjb25kcyI6NjA0ODAwLCJpYXQiOjE3MzY0OTE1NDUsImV4cCI6MTczNzA5NjM0NX0.on7OIGALANO5i7SowZTwl6g5BYa4roquXHqiUomtbv0',
  );

  // runApp(
  //   const MaterialApp(
  //     home: HomeScreen(),
  //   ),

}