// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 251, 251, 251),
          body: Column(
            children: [
              header(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        searchbox(),
                        Divider(),
                        topperson(),
                        Divider(),
                        post(),
                        Divider(),
                        suggested(),
                        Divider(),
                        toprated()
                      ],
                    ),
                  ),
                ),
              ),
              bottonmenu(),
            ],
          ),
        ));
  }

  Widget toprated() => Container(
        child: Column(
          children: [
            title("Top Rated", "view all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  location("assets/images/karsiyaka.jpg", "karşıyaka arena",
                      "650 km for you", "₺84.0"),
                  location("assets/images/almanya.jpg", "mercedes arena",
                      "2550 km for you", "₺944.0"),
                  location("assets/images/sinann.jpg", "sinan erdem",
                      "7 km for you", "₺14.0"),
                  location("assets/images/ülker.jpg", "ülker arena",
                      "30 km for you", "₺44.0"),
                  location("assets/images/stark.jpeg", "stark arena",
                      "200 km for you", "₺444.0"),
                  location("assets/images/almanya.jpg", "mercedes arena",
                      "2550 km for you", "₺944.0"),
                ],
              ),
            )
          ],
        ),
      );

  Widget suggested() => Container(
        child: Column(
          children: [
            title("suggestions", "view all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  location("assets/images/almanya.jpg", "mercedes arena",
                      "2550 km for you", "₺944.0"),
                  location("assets/images/ülker.jpg", "ülker arena",
                      "30 km for you", "₺44.0"),
                  location("assets/images/karsiyaka.jpg", "karşıyaka arena",
                      "650 km for you", "₺84.0"),
                  location("assets/images/stark.jpeg", "stark arena",
                      "200 km for you", "₺444.0"),
                  location("assets/images/almanya.jpg", "mercedes arena",
                      "2550 km for you", "₺944.0"),
                  location("assets/images/sinann.jpg", "sinan erdem",
                      "7 km for you", "₺14.0"),
                ],
              ),
            )
          ],
        ),
      );

  Widget post() => Container(
        child: Column(
          children: [
            title("Near you", "view all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  location("assets/images/sinann.jpg", "sinan erdem",
                      "7 km for you", "₺14.0"),
                  location("assets/images/ülker.jpg", "ülker arena",
                      "30 km for you", "₺44.0"),
                  location("assets/images/stark.jpeg", "stark arena",
                      "200 km for you", "₺444.0"),
                  location("assets/images/almanya.jpg", "mercedes arena",
                      "2550 km for you", "₺944.0"),
                  location("assets/images/karsiyaka.jpg", "karşıyaka arena",
                      "650 km for you", "₺84.0"),
                ],
              ),
            )
          ],
        ),
      );

  Widget location(String foto, String baslik, String mesafe, String fiyat) =>
      Container(
        width: 170,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(15, 170, 170, 170)),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(width: 150, foto)),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(baslik),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 12,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          mesafe,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 56, 56, 56),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    fiyat,
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 125, 87, 1),
                      borderRadius: BorderRadius.circular(8)),
                )
              ],
            )
          ],
        ),
      );

  Widget topperson() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title("Top Locations ", "view all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  story("assets/images/antic.jpg", "Antic"),
                  story("assets/images/boby.jpg", "Boby"),
                  story("assets/images/datome.jpg", "datome"),
                  story("assets/images/jan.jpg", "jan"),
                  story("assets/images/obra.jpg", "obra"),
                  story("assets/images/udoh.jpg", "udoh"),
                  story("assets/images/datome.jpg", "datome"),
                  story("assets/images/antic.jpg", "Antic"),
                  story("assets/images/boby.jpg", "Boby"),
                  story("assets/images/jan.jpg", "jan"),
                  story("assets/images/obra.jpg", "obra"),
                  story("assets/images/udoh.jpg", "udoh"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget searchbox() => Container(
        height: 50,
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(15, 170, 170, 170)),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 17,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "istanbul/ataşehir",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Icon(Icons.tune, size: 17, color: Color.fromRGBO(236, 125, 87, 1)),
          ],
        ),
      );

  Widget story(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 241, 156, 101),
                  Color.fromARGB(255, 233, 92, 70),
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 10,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Padding title(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 16,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 14,
              // fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 80,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome, Servan",
                style: TextStyle(
                  color: Color.fromARGB(255, 153, 153, 153),
                  fontSize: 14,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Explore İstanbul City",
                style: TextStyle(
                  color: Color.fromARGB(255, 56, 56, 56),
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(Icons.sunny,
                    size: 18, color: Color.fromRGBO(236, 125, 87, 1)),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.notifications,
                  size: 18,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget bottonmenu() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
        color: Color.fromARGB(255, 237, 237, 237),
        width: 1,
      )),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          bottommenuitem("home", Icons.home, true),
          bottommenuitem("Moments", Icons.groups, false),
          highlighteditem("Book", Icons.maps_ugc_sharp, false),
          bottommenuitem("Chat", Icons.forum, false),
          bottommenuitem("Profile", Icons.person, false),
        ],
      ),
    );
  }

  Widget bottommenuitem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);

    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 25,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(title, style: TextStyle(fontSize: 10, color: renk)),
        ],
      ),
    );
  }

  Widget highlighteditem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(236, 125, 87, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 30,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(title, style: TextStyle(fontSize: 10, color: renk)),
        ],
      ),
    );
  }
}
