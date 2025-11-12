import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text('Boost'),
          icon: Icon(Icons.rocket),
        ),
        body: Column(
          children: [
            MyAppBar(),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "File",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.tune,
                      size: 30,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Manager",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Let's clean and manage your files",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCards(
                    mycolor: Color(0xff22293d),
                  ),
                  MyCards(
                    mycolor: Color(0xff235403),
                  ),
                  MyCards(
                    mycolor: Color(0xff4f073c),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            ///////////Music-------Start/////////////
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(8),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffcdcdcd),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.music_note,
                      size: 35,
                    )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Music",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text("223 items"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(8),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffcdcdcd),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.video_call,
                      size: 35,
                      color: Colors.redAccent,
                    )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Videos",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text("154 items"),
                    ],
                  ),
                ],
              ),
            ),
            ///////////Videos-------End/////////////
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_left,
              size: 40,
            ),
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQto9k9zqXnSZdP5Hv6NuGkz6XXysxVIh6vrQ&s")),
            margin: EdgeInsets.only(right: 20),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      )),
    );
  }
}

class MyCards extends StatelessWidget {
  final Color mycolor; // make it final

  const MyCards({super.key, required this.mycolor}); // ✅ single constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 250,
      decoration: BoxDecoration(
        color: mycolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Manager",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Icon(Icons.more_horiz, color: Colors.white),
            ],
          ),
          const SizedBox(height: 13),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "large",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "92",
                style: TextStyle(
                  color: Color(0xffcfff00),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Files",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "items",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 13),
          SizedBox(
            height: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                value: 0.7,
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xffcfff00)),
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '17.80GB / 128GB',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 40,
            child: SliderButton(
              action: () async {
                print("Slider button pressed");
                return Future.value(true);
              },
              label: const Text(
                ">>",
                style: TextStyle(fontSize: 22),
              ),
              backgroundColor: Color(0xff6D6E6BFF),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                height: double.infinity,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    "Clean",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
