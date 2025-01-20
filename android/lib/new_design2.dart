import 'package:flutter/material.dart';

class UI3 extends StatelessWidget {
  const UI3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        Column(
            children: [
        ClipRRect(
        child: Padding(
        padding: const EdgeInsets.only(right: 200),
        child: Image.asset('assets/image/shape.png'),
      ),
    ),
              const Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text("Welcome back",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                ),
              ),
              const SizedBox(height: 20,),
              ClipRRect(
                child: Image.asset('assets/image/school.png'),
              )
      ]
        ),
    );
  }
}
