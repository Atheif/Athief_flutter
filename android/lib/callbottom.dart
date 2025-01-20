// import 'package:flutter/material.dart';
// import 'package:stream_video_flutter/stream_video_flutter.dart';
//
// import 'Shorts1.dart';
//
// /// Flutter code sample for [BottomNavigationBar].
//
// void main() => runApp(const BottomNavigationBarExampleApp());
//
// class BottomNavigationBarExampleApp extends StatelessWidget {
//   const BottomNavigationBarExampleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: BottomNavigationBarExample(),
//     );
//   }
// }
//
// class BottomNavigationBarExample extends StatefulWidget {
//   const BottomNavigationBarExample({super.key});
//
//   @override
//   State<BottomNavigationBarExample> createState() =>
//       _BottomNavigationBarExampleState();
// }
//
// class _BottomNavigationBarExampleState
//     extends State<BottomNavigationBarExample> {
//   int _selectedIndex = 0;
//
//   static const TextStyle optionStyle =
//   TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static List<Widget> _widgetOptions = <Widget>[
//     ShortsScreen(),
//     const HomeScreen2(),
//     const Text(
//       'Index 2: video',
//       style: optionStyle,
//     ),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.start),
//             label: 'Reels',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.call),
//             label: 'live stream',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.video_call),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
// class LiveStreamScreen extends StatelessWidget {
//   const LiveStreamScreen({
//     super.key,
//     required this.livestreamCall,
//   });
//
//   final Call livestreamCall;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: StreamBuilder(
//         stream: livestreamCall.state.valueStream,
//         initialData: livestreamCall.state.value,
//         builder: (context, snapshot) {
//           final callState = snapshot.data!;
//           final participant = callState.callParticipants.first;
//           return Scaffold(
//             body: Stack(
//               children: [
//                 if (snapshot.hasData)
//                   StreamVideoRenderer(
//                     call: livestreamCall,
//                     videoTrackType: SfuTrackType.video,
//                     participant: participant,
//                   ),
//                 if (!snapshot.hasData)
//                   const Center(
//                     child: CircularProgressIndicator(),
//                   ),
//                 if (snapshot.hasData && callState.status.isDisconnected)
//                   const Center(
//                     child: Text('Stream not live'),
//                   ),
//                 Positioned(
//                   top: 12.0,
//                   left: 12.0,
//                   child: Material(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(24),
//                     ),
//                     color: Colors.red,
//                     child: Center(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           'Viewers: ${callState.callParticipants.length}',
//                           style: const TextStyle(
//                             fontSize: 14,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 12.0,
//                   right: 12.0,
//                   child: Material(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(24),
//                     ),
//                     color: Colors.black,
//                     child: GestureDetector(
//                       onTap: () {
//                         livestreamCall.end();
//                         Navigator.pop(context);
//                       },
//                       child: const Center(
//                         child: Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text(
//                             'End Call',
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class HomeScreen2 extends StatefulWidget {
//   const HomeScreen2({
//     super.key,
//   });
//
//   @override
//   State<HomeScreen2> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => _createLivestream(),
//           child: const Text('Create a Livestream'),
//         ),
//       ),
//     );
//   }
//
//   Future<void> _createLivestream() async {
//     // Set up our call object
//
//     var video = StreamVideo("mmhfdzb5evj2", userToken:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL1F1aW5sYW5fVm9zIiwidXNlcl9pZCI6IlF1aW5sYW5fVm9zIiwidmFsaWRpdHlfaW5fc2Vjb25kcyI6NjA0ODAwLCJpYXQiOjE3MzYyNTczMTQsImV4cCI6MTczNjg2MjExNH0.UPdgHPh8IoJTYUxroNbBdT8N766UHkwH07JlOap5flo",user: User(info: UserInfo(id: "Quinlan_Vos")));
//     // video.makeCall(callType: callType, id: id)
//     StreamVideo.reset();
//     final call = video.makeCall(
//       callType: StreamCallType.liveStream(),
//
//       id: 'mGEfQaMXjqPY',
//     );
//
//     // Set some default behaviour for how our devices should be configured once we join a call
//     call.connectOptions = CallConnectOptions(
//       camera: TrackOption.enabled(),
//       microphone: TrackOption.enabled(),
//     );
//
//     final result = await call.getOrCreate(); // Call object is created
//
//     if (result.isSuccess) {
//       await call.join(); // Our local app user can join and receive events
//       await call.goLive(); // Allow others to see and join the call (exit backstage mode)
//
//       Navigator.of(context).push(
//         MaterialPageRoute(
//           builder: (context) => LiveStreamScreen(
//             livestreamCall: call,
//           ),
//         ),
//       );
//     } else {
//       debugPrint('Not able to create a call.');
//     }
//   }
// }
