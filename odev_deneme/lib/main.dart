import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 45,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Image.asset("assets/images/logo.png"),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add_circle,
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.favorite,
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, left: 8, bottom: 8, right: 20),
                            child: Icon(
                              Icons.send,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              Expanded(
                  child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            story("assets/images/servan.jpg", "servan_akgm"),
                            story("assets/images/fb.jpg", "Fenerbahçe"),
                            story("assets/images/thy.jpg", "THY"),
                            story("assets/images/Volkswagen.jpg", "Volkswagen"),
                            story("assets/images/servan.jpg", "servan_akgm"),
                            story("assets/images/fb.jpg", "Fenerbahçe"),
                            story("assets/images/thy.jpg", "THY"),
                            story("assets/images/Volkswagen.jpg", "Volkswagen"),
                          ],
                        ),
                      ),
                      post(
                          "assets/images/servan.jpg",
                          "assets/images/kadıköy.jpg",
                          "servan_akgm",
                          "istanbul/kadıköy"),
                      post("assets/images/thy.jpg", "assets/images/ucak.jpg",
                          "THY", "istanbul havalimanı"),
                      post("assets/images/fb.jpg", "assets/images/kupa.jpg",
                          "Fenerbahçe", "Avrupa"),
                      post("assets/images/volkswagen.jpg",
                          "assets/images/araba.jpg", "volkswagen", "Almanya"),
                    ],
                  ),
                ),
              )),
              Container(
                width: (double.infinity),
                height: 60,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.home,
                          size: 28,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.search,
                          size: 28,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.smart_display,
                          size: 28,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.favorite,
                          size: 28,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.person,
                          size: 28,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ));
  }

  Container post(String avatar, String foto, String name, String konum) =>
      Container(
        child: Column(
          children: [
            likecommetbox(),
            Padding(padding: const EdgeInsets.all(8.0)),
            Image.asset(foto),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.comment_bank_outlined),
                    ],
                  ),
                  Icon(Icons.flag_outlined),
                ],
              ),
            ),
            yorum("ahmetselimover",
                "6-0 galibiyeti görüyorum 10dk da bir gol sevinci yaşadığımızı hissedebiliyorum."),
            yorum("emre",
                "çok yaşa fenerbahçe şampiyonluk yolunda güçlü adımlarla decam durmak yok, 3 temmuz ruhu ile savaşın"),
          ],
        ),
      );

  Padding likecommetbox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  "assets/images/servan.jpg",
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "servan_akgm",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "istanbul kadıköy",
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.more_horiz),
        ],
      ),
    );
  }

  Padding yorum(String name, String yorum) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
                maxLines: 3,
                text: TextSpan(children: [
                  TextSpan(
                      text: name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  TextSpan(text: "  "),
                  TextSpan(
                    text: yorum,
                    //style: TextStyle()
                  )
                ])),
          ),
        ],
      ),
    );
  }

  Widget story(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(214, 71, 103, 1),
                  const Color.fromRGBO(241, 166, 117, 1)
                ])),
            child: Container(
              padding: EdgeInsets.all(4),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 50,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
