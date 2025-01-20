import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:video_player/video_player.dart';


  class instaview extends StatefulWidget {
    final String src;
    const instaview({ required Key key ,  required this.src}):super(key:key );

  @override
  State<instaview> createState() => _instaviewState();
}

class _instaviewState extends State<instaview> {
      late VideoPlayerController _videoPalyerController;
       ChewieController? _chewieController;
      bool _liked=false;
    @override
    void initState() {
      super.initState();
      initializePlayer();
    }
    Future initializePlayer() async {
      _videoPalyerController =VideoPlayerController.network(widget.src ) ;
      await _videoPalyerController.initialize();
      _chewieController=ChewieController(videoPlayerController: _videoPalyerController,
      autoPlay: true,
      looping: true,
        showControls: false,
      );

      setState(() {
      });
    }

    @override
  void dispose() {
      _videoPalyerController.dispose();
      _chewieController?.dispose();
    super.dispose();
  }

    @override
    Widget build(BuildContext context) {

      return Stack(
        fit: StackFit.expand,
        children: [
         _chewieController!=null&&_chewieController!.videoPlayerController.value.isInitialized?
         GestureDetector(
           onDoubleTap: (){
             setState(() {
               _liked=!_liked;
             });
           },


             child: Chewie(controller:_chewieController!,))
             : Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           CircularProgressIndicator(),
           SizedBox(height: 10,),
           Text("Loading")

         ],
       ),
       if(_liked)
         Center(child: Icon(Icons.favorite),

          ),
       IntroductionScreen(),

        ],


      );
    }
}


