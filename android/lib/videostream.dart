import 'package:flutter/material.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  final client = StreamVideo(
    'mmhfdzb5evj2',
    user: User.regular(userId: 'Plo_Koon', role: 'admin', name: 'John Doe'),
    userToken: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL1Bsb19Lb29uIiwidXNlcl9pZCI6IlBsb19Lb29uIiwidmFsaWRpdHlfaW5fc2Vjb25kcyI6NjA0ODAwLCJpYXQiOjE3MzY1MDM5MDEsImV4cCI6MTczNzEwODcwMX0.NYOaXt6YyrqoZRH3yQvZM-PmL2XLO-iqvB1eGt4-50c',
  );

  // runApp(const MyApp());
}