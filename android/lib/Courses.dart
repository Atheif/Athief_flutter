import 'package:flutter/material.dart';

class json extends StatelessWidget {
   var data=[
     {
       "title":" Digital Marketing",
       "title1":"setup Graphic Design",
       "ratting": " 4.2 |  4hr 05min",

     },

     {
       "title":" Digital Marketing",
       "title1":"setup Graphic Design",
       "ratting": " 4.2 |  4hr 05min",

     },

     {
       "title":" Digital Marketing",
       "title1":"setup Graphic Design",
       "ratting": " 4.2 |  4hr 05min",

     },


];
   Widget courseItem(context) {
     return ListView.builder(
         shrinkWrap: true,
         itemCount: data.length,
         itemBuilder: (context, index) {
           return  Container(
             height: 142,
             width: MediaQuery.of(context).size.width-100,
             padding: EdgeInsets.all(10),
             margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.white,
             ),
             child:
             Row(
               children: [
                 ClipRRect(
                   borderRadius:
                   BorderRadius.only(topLeft: Radius.circular(10),
                     bottomLeft: Radius.circular(10),),
                   child: Image.asset("assets/image/lesson.png"),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                           Text(data[index]["title"]!,
                             style: TextStyle(
                               color: Colors.orange,
                             ),),
                           SizedBox(width: MediaQuery
                               .of(context)
                               .size
                               .width - 405,),
                           Icon(Icons.verified, color: Colors.green,)
                         ],
                       ),
                       SizedBox(height: 5,),
                       Text(data[index]["title1"]!,
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           Icon(Icons.star, color: Colors.orange,),
                           Text(data[index]["ratting"]!),
                         ],
                       ),
                       SizedBox(height: 7,),
                       Row(
                         children: [
                           SizedBox(width: MediaQuery.of(context).size.width - 359,),
                           Text("VIEW CERTIFICATE",
                             style: TextStyle(
                                 color: Colors.green
                             ),),
                         ],
                       )
                     ],
                   ),
                 )
               ],
             ),
           );
         } ); }




  Widget Button(context){
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: [
          ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
            backgroundColor:  Colors.orange,
          ),child:Text("Completed")),
          SizedBox(width:MediaQuery.of(context).size.width-310 ,),
          ElevatedButton(onPressed: (){}, child:Text("Ongoing",))
        ],
      ),
    );

  }


  Widget searchbar(context){
    return  Row(

      children: [
        Flexible(
          flex: 2,
          child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide.none
              ),
              hintText: 'Search for',

              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget coursebar(context){
    return Row(
      children: [
        Container(
          height: 142,
          width: MediaQuery.of(context).size.width-17,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(

            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft:Radius.circular(10) ),
                  child:
                  Image.asset("assets/image/lesson.png",)

              ),
            ],
          ),
        ),

      ],
    );
    
    
  }
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
         child: ListView(
           children: [
           Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("My Courses",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
               ),
             )
           ],

           ) ,
             SizedBox(height: 30,),

             searchbar(context),
             SizedBox(height: 20,),
             Button(context),

             SizedBox(height: 20,),
             courseItem(context),
             SizedBox(height: 20,),


           ],
         ),
      ),
    );
  }
  }