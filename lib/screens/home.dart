import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app/router.dart';
import '../utils/media_query.dart';
import '../widgets/helper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                height: 150,
                width: screenWidth(context),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          floatbutton(
                              icon: Icon(
                                Icons.notifications_outlined,
                                size: 20,
                                color: Colors.grey,
                              ),
                              press: (() {
                                Navigator.of(context).pushNamed(
                                  AppRouter.messageScreen,
                                );
                              })),
                          floatbutton(
                              icon: Icon(
                                Icons.message_outlined,
                                size: 20,
                                color: Colors.grey,
                              ),
                              press: (() {
                                Navigator.of(context).pushNamed(
                                  AppRouter.messageScreen,
                                );
                              })),
                        ],
                      ),
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 55),
                            child: Row(
                              children: [
                                Container(
                                  height: screenHeight(context) * 0.13,
                                  width: screenWidth(context),
                                  color: Colors.transparent,
                                  child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 5,
                                                        left: 10,
                                                      ),
                                                      child: Container(
                                                        height: 65,
                                                        width: 65,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    190,
                                                                    128,
                                                                    192),
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                                width: 2,
                                                                color: Colors
                                                                    .orange)),
                                                        child: Container(
                                                          height: 95,
                                                          width: 95,
                                                          decoration:
                                                              const BoxDecoration(
                                                            image:
                                                                DecorationImage(
                                                              image: AssetImage(
                                                                  "assets/images/bamsel.png"),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Container(
                                                              height: 20,
                                                              width: 20,
                                                              decoration: const BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  shape: BoxShape
                                                                      .circle),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: 17,
                                                      left: 22,
                                                      child: SizedBox(
                                                        height: 40,
                                                        width: 40,
                                                        child: IconButton(
                                                          color: Colors.orange,
                                                          onPressed: () {},
                                                          icon: Icon(Icons.add),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text("Me"),
                                                ),
                                              ],
                                            ),
                                            avatar(
                                                t1: "Dogambo",
                                                img: "assets/images/me.png",
                                                color: Color.fromARGB(
                                                    255, 202, 247, 155)),
                                            avatar(
                                                t1: "Bamsel",
                                                img: "assets/images/me.png",
                                                color: Color.fromARGB(
                                                    255, 252, 215, 159)),
                                            avatar(
                                                t1: "Ertagrul",
                                                img: "assets/images/me.png",
                                                color: Color.fromARGB(
                                                    255, 190, 235, 238)),
                                            avatar(
                                                t1: "Procule",
                                                img: "assets/images/me.png",
                                                color: Color.fromARGB(
                                                    255, 209, 163, 184)),
                                            avatar(
                                                t1: "Kamal",
                                                img: "assets/images/me.png",
                                                color: Color.fromARGB(
                                                    255, 153, 154, 199)),
                                            avatar(
                                                t1: "Sana",
                                                img: "assets/images/me.png",
                                                color: Color.fromARGB(
                                                    255, 161, 206, 189)),
                                          ],
                                        ),
                                      ]),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Icon(Icons.arrow_back),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 120,
              width: 350,
              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5, left: 10),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 190, 128, 192),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 2, color: Colors.orange)),
                          child: Container(
                            height: 95,
                            width: 95,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/bamsel.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Write Something..."),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.edit_note,
                        size: 20,
                        color: Color.fromARGB(255, 116, 116, 116),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    height: 10,
                    color: Color.fromARGB(255, 194, 191, 191),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Color.fromARGB(255, 211, 211, 211)),
                              ),
                              child: Icon(Icons.image),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Color.fromARGB(255, 211, 211, 211)),
                              ),
                              child: Icon(Icons.image),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Color.fromARGB(255, 211, 211, 211)),
                              ),
                              child: Icon(Icons.image),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: button2(
                            w: 90,
                            h: 35,
                            t1: "Share",
                            press: () {
                              Navigator.of(context).pushNamed(
                                AppRouter.messageScreen,
                              );
                            },
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 192, 176, 28),
                                Colors.deepOrange,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.015,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 190, 128, 192),
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 2, color: Colors.orange)),
                            child: Container(
                              height: 95,
                              width: 95,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/bamsel.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(),
                    ],
                  ),
                ),
              ),
            ),
            Container()
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              isSelected: true,
              icon: Image.asset('assets/images/home.png'),
              onPressed: () {},
            ),
            IconButton(
              isSelected: true,
              icon: Image.asset('assets/images/user.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/compass.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              iconSize: 32.0,
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
