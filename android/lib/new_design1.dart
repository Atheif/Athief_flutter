import 'package:flutter/material.dart';
import 'package:path/path.dart';

class UI1 extends StatelessWidget {
  const UI1({super.key});
  Widget line(context){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 50,
        width:MediaQuery.of(context).size.width,
        child:Padding(
          padding: const EdgeInsets.all(2.0),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius:BorderRadius.horizontal(right: Radius.circular(100),left:Radius.circular(100)),
              ),
              hintText:"Enter your full name",
            ),
          ),
        ),

      ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
              children: [
                ClipRRect(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Image.asset('assets/image/shape.png'),
                  ),
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10,top: 50),
                      child: Text("Welcome to Onboard!",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Let’s help to meet up your tasks.",
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                line(context),
                SizedBox(height: 15,),
                line(context),
                SizedBox(height: 15,),
                line(context),
                SizedBox(height: 15,),
                line(context),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                      height: 40,
                      width: 300,
                      child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),

                          ),
                        ),
                        onPressed:(){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>UI1);

                        },child: const Text("Register",style: TextStyle(color: Colors.white),),),

                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:70),
                      child: Text("Already have an account ?"),
                    ),
                    InkWell( onTap: (){},
                        child: Text(
                      'Sign in',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.cyan
                      ),
                    ))
                  ],
                )

              ]
          ),


        ));
  }
}
