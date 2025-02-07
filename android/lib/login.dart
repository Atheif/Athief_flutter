

import 'package:flutter/material.dart';
//import 'package:login_page/int.dart';

import 'int.dart';

class Login extends StatelessWidget{

  final Namecontroller = TextEditingController();
  final Passwordcontroller = TextEditingController();
//  bool _validate = false;

  @override
  Widget build (BuildContext context){

    return Scaffold(

        body :Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("LOGIN",
                style:TextStyle(
                  color:Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                  wordSpacing: 10,
                )
            ),
            SizedBox(height: 10),
            TextFormField(


              controller: Namecontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.horizontal(right: Radius.circular(100),left:Radius.circular(100)),


                  ),
                  hintText:"Name"


              ),


            ),

            SizedBox(height: 30),

            TextFormField(
              controller: Passwordcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius:BorderRadius.horizontal(right: Radius.circular(100),left:Radius.circular(100))
                ),
                hintText:"Password",



              ),


            ),
            SizedBox(height: 30),
            ElevatedButton(


                child: const Text('SUBMIT'),

                onPressed: () {

                  if(Namecontroller.text.isNotEmpty && Passwordcontroller.text.isNotEmpty ) {


                    showDialog(
                      context: context, // Provide the context of your widget
                      builder: (context) {
                        return AlertDialog(
                          title: Text( Namecontroller.text),

                          content: Text(Passwordcontroller.text),

                          actions: [


                            TextButton(

                              onPressed: Navigator.of(context).pop,


                              child: const Text("Close"),

                            ),
                            TextButton(

                              onPressed: (){
                                // Navigator.push(context, MaterialPageRoute(builder: (c)=>Counter(text1:Namecontroller.text,text2: Passwordcontroller.text,)));


                              },



                              child: const Text("Next"),

                            ),
                          ],
                        );


                      },

                    );

                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Name and password is Required")));
                  }
                }

            ),
          ],

        )
    );

  }



}