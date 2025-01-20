import 'package:flutter/material.dart';

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
          "assets/image/lesson.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget tabbar(context) {
    return TabBar(
      unselectedLabelColor: Colors.black,
      labelColor: Colors.red,
      tabs: [
        Tab(text: "Lessons"),
        Tab(text: "Description"),
      ],
      controller: _tabController,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  Widget center(context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
                      padding: EdgeInsets.all(10.0),
                      icon: Icon(
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

                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(((data["course_detail"] as Map)["lessons"] as List)[index]["time"]!,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Icon(Icons.arrow_forward_ios_rounded,color: Colors.orange,),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
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
              margin: EdgeInsets.only(top: 20, bottom: 20),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(width: 2),
              ),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            ),
            Text("Course Overview"),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(width: 2),
              ),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
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