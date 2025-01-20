import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    OverView (),
    json()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(

            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Study',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.file_copy),
            label: 'file',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
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

                          const Column(
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
                          IconButton(onPressed: (){}, icon:const Icon(Icons.add_alert_rounded))

                        ] ),
                    const SizedBox(height: 20,),
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
                    const SizedBox(height: 20,),

                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          height: 150,
                          width:MediaQuery.of(context).size.width-40,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(25),

                          ),
                          child:

                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(" We just don't give our student only lecture but real life experience",
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
                    const SizedBox(height: 20,),

                    const Row(
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
                    const Row(
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

                    SizedBox(
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

                                        IconButton(onPressed: (){}, icon:const Icon(Icons.favorite),
                                          color: Colors.white,
                                          padding: const EdgeInsets.only(left: 190,right: 10),
                                        )
                                      ],
                                    ),
                                    Column(

                                      children: [
                                        Text(
                                          data[index]["title"]!,

                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 20,)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                                data[index]["time"]!
                                            ),
                                            const Icon(
                                              Icons.timelapse_outlined,
                                              color: Colors.blue,
                                            )
                                          ],
                                        ),
                                        const SizedBox(width: 80,),

                                        const Icon(
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
                    const SizedBox(height: 10,),

                    SizedBox(
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

                                        IconButton(onPressed: (){}, icon:const Icon(Icons.favorite),
                                          color: Colors.white,
                                          padding: const EdgeInsets.only(left: 190,right: 10),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          data [index]["title"]!,

                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 20,)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text(data [index]["time"]!),
                                            const Icon(
                                              Icons.timelapse_outlined,
                                              color: Colors.blue,
                                            )
                                          ],
                                        ),
                                        const SizedBox(width: 80,),

                                        const Icon(
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




class OverView extends StatefulWidget {
  @override
  profilePageState createState() => profilePageState();
}

class profilePageState extends State<OverView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Widget cont(context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width - 50,
      color: Colors.white,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(
          "assets/image/lesson.png", // Ensure this image exists in your assets
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget tabbar(context) {
    return TabBar(
      unselectedLabelColor: Colors.black,
      labelColor: Colors.red,
      tabs: const [
        Tab(text: "Lessons"),
        Tab(text: "Description"),
      ],
      controller: _tabController,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  Widget center(context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "React Front To Back",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.timelapse_outlined,
                color: Colors.blue,
              ),
              Text("6h:30m .7 lessons"),
              Spacer(),
              Icon(Icons.star, color: Colors.orange),
              Text("4.9")
            ],
          ),
        ],
      ),
    );
  }

  Widget Inro(BuildContext context) {
    return SizedBox(
      height:300,
      child: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: ((data["course_detail"] as Map)["lessons"] as List).length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      padding: const EdgeInsets.all(10.0),
                      icon: const Icon(
                        Icons.play_circle_fill_rounded,
                        color: Colors.orange,
                        size: 40.0,
                      ),
                      onPressed: () {

                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(((data["course_detail"] as Map)["lessons"] as List)[index]["tittle"]!,

                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(((data["course_detail"] as Map)["lessons"] as List)[index]["time"]!,
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Column(
                      children: [
                        Icon(Icons.arrow_forward_ios_rounded,color: Colors.orange,),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Course Description",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text("The React course is designed to equip you with the expertise needed to construct contemporary and expandable web applications. "
                    "You will gain mastery over React, Redux, and React Native concepts.",
                  style: TextStyle(
                    fontSize: 16.0,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  var data = {

    "course_detail" : {
      "title" : "React Front To Back",
      "desc" : "",
      "time" : "6hr 30min.7 lessons",
      "image" : "",
      "lesson_count" : "",
      "ratings" : "",

      "lessons" : [
        {
          "tittle":"Introduction to React",
          "time":"04:28 min",
        },
        {
          "tittle":"Understanding React",
          "time":"06:12 min",
        },
        {
          "tittle":"Create first React project",
          "time":"43:58 min",
        },
        {
          "tittle":"Build React",
          "time":"15:18 min",
        }
      ],

    }
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(width: 2),
              ),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
            ),
            const Text("Course Overview"),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(width: 2),
              ),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            cont(context),
            center(context),
            tabbar(context),
            Inro(context),


          ],
        ),
      ),
    );
  }
}







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
            height: 130,
            width: MediaQuery.of(context).size.width-20,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child:
            Row(
              children: [
                SizedBox(

                  width: MediaQuery.of(context).size.width * 0.2,

                  child: ClipRRect(
                    borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),),
                    child: Image.asset("assets/image/lesson.png"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8-56,

                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(data[index]["title"]!,
                            style: const TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                          const Icon(Icons.verified, color: Colors.green,)
                        ],

                      ),
                      Text(data[index]["title1"]!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.orange,),
                          Text(data[index]["ratting"]!),
                        ],
                      ),
                      const Row(
                        children: [
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
          ),child:const Text("Completed")),
         // SizedBox(width:MediaQuery.of(context).size.width-300 ,),
          const Spacer(),
          ElevatedButton(onPressed: (){}, child:const Text("Ongoing",))
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

              hintStyle: const TextStyle(
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
         width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(

            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft:Radius.circular(10),bottomLeft:Radius.circular(10) ),
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
            const Row(
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
            const SizedBox(height: 30,),
            searchbar(context),
            const SizedBox(height: 20,),
            Button(context),
           // SizedBox(height: 20,),
            courseItem(context),
          //  SizedBox(height: 20,),


          ],
        ),
      ),
    );
  }
}







