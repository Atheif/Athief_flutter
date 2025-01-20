import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stream_video/stream_video.dart';

import 'livestream.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({
    super.key,
  });

  @override
  State<HomeScreen3> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _createLivestream(),
          child: const Text('Create a Livestream'),
        ),
      ),
    );
  }

  Future<void> _createLivestream() async {
    // Set up our call object

    var video = StreamVideo("mmhfdzb5evj2", userToken:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL1F1aW5sYW5fVm9zIiwidXNlcl9pZCI6IlF1aW5sYW5fVm9zIiwidmFsaWRpdHlfaW5fc2Vjb25kcyI6NjA0ODAwLCJpYXQiOjE3MzYyNTczMTQsImV4cCI6MTczNjg2MjExNH0.UPdgHPh8IoJTYUxroNbBdT8N766UHkwH07JlOap5flo",user: User(info: UserInfo(id: "Quinlan_Vos")));
    // video.makeCall(callType: callType, id: id)
    StreamVideo.reset();
    final call = video.makeCall(
      callType: StreamCallType.liveStream(),

      id: 'mGEfQaMXjqPY',
    );

    // Set some default behaviour for how our devices should be configured once we join a call
    call.connectOptions = CallConnectOptions(
      camera: TrackOption.enabled(),
      microphone: TrackOption.enabled(),
    );

    final result = await call.getOrCreate(); // Call object is created

    if (result.isSuccess) {
      await call.join(); // Our local app user can join and receive events
      await call.goLive(); // Allow others to see and join the call (exit backstage mode)

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LiveStreamScreen(
            livestreamCall: call,
          ),
        ),
      );
    } else {
      debugPrint('Not able to create a call.');
    }
  }
}