 import 'package:flutter/material.dart';

class UI extends StatelessWidget {
  const UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 200,),
            child: ClipRRect(
              child: Image.asset('assets/image/shape.png',

              )),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20,left: 62,right: 50),
            child: ClipRRect(
              child: Image.asset('assets/image/Shape2.png',
              height: 130,
              ),
            ),

          ),
          SizedBox(height: 25,),
          Column(
            children: [
              const Text("Gets things with TODs",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height:2,),
              Padding(
                padding: const EdgeInsets.only(left: 100,right: 100),
                child: const Text("Lorem ipsum dolor sit amet consectetur. "
                    "Eget sit nec et euismod."
                    " Consequat urna quam felis interdum quisque."
                    " Malesuada adipiscing tristique ut eget sed.",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
              ),
              SizedBox(height: 70,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    height: 60,
                    width: 380,
                    child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),

                        ),
                      ),
                      onPressed:(){
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>UI1);

                      },child: Text("Get Started",style: TextStyle(color: Colors.white),),),

                  ),
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
