import 'package:flutter/material.dart';

class design2 extends StatefulWidget{

  @override
  _BounceAnimationDemoState createState() => _BounceAnimationDemoState();
}

class _BounceAnimationDemoState extends State<design2> {
  double height = 100.0; // Initial height of the box

  void _startBounceAnimation() async{
    setState(() {
      height = 200.0; // Set the target height for the bounce animation
    });

    await Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        height = 100.0; // Reset the height after the bounce animation

      });
    });

    await Future.delayed(Duration(milliseconds: 1500), () {
      _startBounceAnimation();
    });
  }

  @override
  void initState() {
    _startBounceAnimation();
    super.initState();
  }
@override
  Widget build(BuildContext context) {

    return Scaffold(

      body:Stack(
        alignment: Alignment.center,
        children:  <Widget>[

          Container(
            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(500)),
            height: 400,
            width: 400,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            margin: EdgeInsets.only(top: height-50),

            decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(500)),
            height: 250,
            width: 250,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
           margin: EdgeInsets.only(top: height),
            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(100)),
            height: 200,
            width: 200,
          ),



        ],

      ) ,
    );
  }
}