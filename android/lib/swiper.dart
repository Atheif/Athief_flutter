import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'InstaView.dart';

class swiper extends StatelessWidget {
 final List<String> videos=[
"https://youtube.com/shorts/AOoZY1f3K-0?si=SGGdXZxf6U-JlxF6",
   "https://youtube.com/shorts/cLuos3SPnT0?si=QlAs7yN4Y06ELY42",
   "https://youtube.com/shorts/HVvoIDiXQOk?si=8_7R7lrGitp-1N-z"
   ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Container(
        child: Stack(
          children: [
               Swiper(itemBuilder: (BuildContext context,int index){
                 return instaview(src: videos[index],key: ValueKey(index),  );
               }, itemCount:videos.length,
                 scrollDirection: Axis.vertical,
               ),
            const Padding(padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Flutter shorts")
                ],
              ),
            ),



          ],
        ),
      ),
      ),
    );
  }
}
