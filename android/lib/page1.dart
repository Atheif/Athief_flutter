import 'package:flutter/material.dart';

class page1 extends StatelessWidget{

  var data=[
    {
      "title": "React Front To back Master class (7 lessons)",
      "ratting": "4",
      "time": "6h:2m",
    },
    {
    "title": "React Front To back Master class (7 lessons)",
    "ratting": "4",
    "time": "4h:0m",
    },
    {
      "title": "React Front To back Master class (7 lessons)",
      "ratting": "4",
      "time": "3h:1m",

    },

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:SingleChildScrollView(

        child:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            children: [

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Hi,Alex",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Find your lessons today !",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        )

                      ],


                    ),
                    IconButton(onPressed: (){}, icon:Icon(Icons.add_alert_rounded))

                  ] ),
              SizedBox(height: 20,),
              Row(


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
                          hintText: 'Search Now...',
                          hintStyle: const TextStyle(

                              color: Colors.grey,
                              fontSize: 18
                          ),
                          prefixIcon: Container(
                            padding: const EdgeInsets.all(15),
                            child: Image.asset('assets/image/images.png'),
                            width: 18,
                          )
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    child: IconButton(onPressed: (){}, icon:Icon(Icons.ac_unit_sharp)),
                    height: 48,
                    width: 54,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),

                  ),


                ],


              ),
              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    height: 150,
                    width:MediaQuery.of(context).size.width-50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(25),

                    ),
                    child:

                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(" We just don't give our student only lecture but real life experience",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            ElevatedButton(onPressed:(){},style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),child: Text("Explore Courses",style: TextStyle(color: Colors.white),),),
                            ElevatedButton(onPressed:(){},style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),child: Text("Start learning",style: TextStyle(color: Colors.white),),),

                          ],
                        )
                      ],

                    ),


                  ) ,

                ],


              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Featured courses",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text("See All",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue
                  ),
                  )
                ],

              ),
             // SizedBox(height: 10,),
              Row(
                children: [
                  Text("Boost your global skill and career with HiStudy.",
                  style: TextStyle(
                    fontSize: 12,
                    color:Colors.black,
                    wordSpacing: 2,
                  ),
                  ),
                ],
              ),
         //     SizedBox(height: 10,),

             Container(
                            height: 276.32,
                            child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: data.length,
               itemBuilder: (context,index){

                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     width: 220.42,
                     decoration: BoxDecoration(
                       borderRadius:BorderRadius.circular(10),
                       color: Colors.white,
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Stack(
                           children: [
                     ClipRRect(


                     borderRadius: BorderRadius.circular(15.0),
                       child:

                       Image.asset("assets/image/lesson.png",)

                 ),

                             IconButton(onPressed: (){}, icon:Icon(Icons.favorite),
                             color: Colors.white,
                               padding: EdgeInsets.only(left: 190,right: 10),
                             )
                           ],
                         ),
                         Column(

                           children: [
                             Text(
                               data[index]["title"]!,

                             style: TextStyle(
                               fontSize: 15,
                               fontWeight: FontWeight.bold,
                             ),
                             ),
                             SizedBox(height: 20,)
                           ],
                         ),
                         Row(
                           children: [
                             Row(
                               children: [
                                 Text(
                                   data[index]["time"]!
                                 ),
                                Icon(
                                  Icons.timelapse_outlined,
                                  color: Colors.blue,
                                )
                               ],
                             ),
                             SizedBox(width: 80,),

                             Icon(
                               Icons.star,
                               color: Colors.orange,
                             ),
                             Text(data[index]["ratting"]!),
                           ],
                         )
                       ],
                     ),
                   ),
                 );

               }
                            ),
                          ),
              SizedBox(height: 10,),

              Container(
                height: 276.32,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 220.42,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(


                                      borderRadius: BorderRadius.circular(15.0),
                                      child:

                                      Image.asset("assets/image/lesson.png",)

                                  ),

                                  IconButton(onPressed: (){}, icon:Icon(Icons.favorite),
                                    color: Colors.white,
                                    padding: EdgeInsets.only(left: 190,right: 10),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    data [index]["title"]!,

                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 20,)
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(data [index]["time"]!),
                                      Icon(
                                        Icons.timelapse_outlined,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 80,),

                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Text(data [index]["ratting"]!),
                                ],
                              )
                            ],
                          ),
                        ),
                      );

                    }
                ),
              )
            ]
        ),
      ) ));
  }

}
