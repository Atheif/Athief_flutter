import 'package:flutter/material.dart';
import 'package:stream_video/stream_video.dart';

import 'callscreen.dart';

class videstrm extends StatefulWidget {
  const videstrm({super.key});

  @override
  State<videstrm> createState() => _videstrmState();
}

class _videstrmState extends State<videstrm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       // title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Create Call'),
          onPressed: () async {
            try {
              var video = StreamVideo("mmhfdzb5evj2", userToken:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL1F1aW5sYW5fVm9zIiwidXNlcl9pZCI6IlF1aW5sYW5fVm9zIiwidmFsaWRpdHlfaW5fc2Vjb25kcyI6NjA0ODAwLCJpYXQiOjE3MzYyNTczMTQsImV4cCI6MTczNjg2MjExNH0.UPdgHPh8IoJTYUxroNbBdT8N766UHkwH07JlOap5flo",user: User(info: UserInfo(id: "Quinlan_Vos")));

              StreamVideo.reset();
              var call = video.makeCall(
                callType: StreamCallType(),
                id: 'Lzgfpph8tbSr',
              );

              await call.getOrCreate();

              // Created ahead
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CallScreen(call: call),
                ),
              );
            } catch (e) {
              debugPrint('Error joining or creating call: $e');
              debugPrint(e.toString());
            }
          },
        ),
      ),
    );
  }
}
