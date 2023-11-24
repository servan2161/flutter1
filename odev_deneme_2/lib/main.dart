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
        title: 'YOUTBE MUSİC',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  const Color.fromRGBO(62, 36, 17, 1),
                  const Color.fromRGBO(48, 14, 32, 1),
                ])),
                width: double.infinity,
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assetss/imagee/logoo.png",
                                  width: 35,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Music",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 27),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.podcasts,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assetss/imagee/profile.jpg"),
                                  radius: 13,
                                ),
                              ],
                            )
                          ]),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          categoryitem("Energize"),
                          categoryitem("workout"),
                          categoryitem("feel good"),
                          categoryitem("relaxation"),
                          categoryitem("rock"),
                          categoryitem("pops"),
                          categoryitem("enstrumentals"),
                          categoryitem("hip hops"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromRGBO(7, 5, 8, 1),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "START RADİO FROM A SONG",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 187, 186, 184),
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Quick Picks",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 3, bottom: 3, right: 9, left: 9),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Text(
                                  "play all",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 187, 186, 184),
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                          musicrow("assetss/imagee/cover1.jpg", "Tutkulu",
                              "Sezen Aksu"),
                          musicrow("assetss/imagee/cover2.jpg", "Bertaraf Et",
                              "Hayko Cepkin"),
                          musicrow("assetss/imagee/cover3.jpg", "Senin Marşın",
                              "Duman"),
                          musicrow("assetss/imagee/cover4.jpg", "Krallar",
                              "Mabel Matiz"),
                          musicrow(
                              "assetss/imagee/cover5.jpg", "Zombi", "Adamlar"),
                          musicrow("assetss/imagee/cover6.jpg",
                              "Sevdam Ağlıyor ", "Sertab Erener"),
                          musicrow("assetss/imagee/cover7.jpg", "Nem Kaldı",
                              "Cem Karaca"),
                          musicrow("assetss/imagee/cover8.jpg", "Hal Hal",
                              "Barış Manço"),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Forgotten Favorites",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 3, bottom: 3, right: 9, left: 9),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Text(
                                  "play all",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 187, 186, 184),
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                musicrow2("assetss/imagee/cover9.jpg",
                                    "Anılar Düştü Peşime", "Kazım Koyuncu"),
                                musicrow2("assetss/imagee/cover10.jpg",
                                    "Sanki Rüya", "Birsen Tezer"),
                                musicrow2("assetss/imagee/cover11.jpg",
                                    "Küçük Bir Aşk Masalı", "Özdemir Erdoğan"),
                                musicrow2("assetss/imagee/cover2.jpg",
                                    "Yalnız Kalsın", "Hayko Cepkin"),
                                musicrow2("assetss/imagee/cover3.jpg", "Balık",
                                    "Duman"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: const Color.fromRGBO(33, 33, 33, 1),
                width: double.infinity,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            Text(
                              "Home",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.play_circle,
                              color: Colors.white,
                            ),
                            Text(
                              "samples",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.explore,
                              color: Colors.white,
                            ),
                            Text(
                              "explore",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.subscriptions,
                              color: Colors.white,
                            ),
                            Text(
                              "libary",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.slideshow,
                              color: Colors.white,
                            ),
                            Text(
                              "upgrade",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ],
          ),
        ));
  }

  Padding musicrow2(String photo, String title, String artsit) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                photo,
                width: 150,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                artsit,
                style: TextStyle(
                  color: const Color.fromARGB(255, 142, 142, 142),
                  fontSize: 14,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget musicrow(String photo, String title, String artsit) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 70,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    artsit,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 142, 142, 142),
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Container categoryitem(
    String text,
  ) {
    return Container(
      padding: const EdgeInsets.only(top: 6, bottom: 6, right: 12, left: 12),
      margin: const EdgeInsets.only(right: 3, left: 3),
      decoration: BoxDecoration(
          color: const Color.fromARGB(37, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color.fromARGB(57, 255, 255, 255))),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
      ),
    );
  }
}
