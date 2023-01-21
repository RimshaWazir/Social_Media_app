import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/utils/media_query.dart';

import '../app/router.dart';
import '../widgets/helper.dart';

class Message extends StatefulWidget {
  const Message({super.key});
  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            color: Colors.orange,
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRouter.userscreen,
              );
            },
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.white,
          title: Padding(
            padding: EdgeInsets.only(left: 85),
            child: Text(
              "Message",
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
          )),
      body: body(),
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
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRouter.home,
                );
              },
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

  Widget body() {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 410,
              height: 40,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 5),
                child: Text(
                  "STORIES",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: screenHeight(context) * 0.13,
              width: screenWidth(context),
              color: Colors.white,
              child: ListView(scrollDirection: Axis.horizontal, children: [
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
                                    color: Color.fromARGB(255, 190, 128, 192),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 2, color: Colors.orange)),
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
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
                                          color: Colors.white,
                                          shape: BoxShape.circle),
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
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Me"),
                        ),
                      ],
                    ),
                    avatar(
                        t1: "Dogambo",
                        img: "assets/images/me.png",
                        color: Color.fromARGB(255, 202, 247, 155)),
                    avatar(
                        t1: "Bamsel",
                        img: "assets/images/me.png",
                        color: Color.fromARGB(255, 252, 215, 159)),
                    avatar(
                        t1: "Ertagrul",
                        img: "assets/images/me.png",
                        color: Color.fromARGB(255, 190, 235, 238)),
                    avatar(
                        t1: "Procule",
                        img: "assets/images/me.png",
                        color: Color.fromARGB(255, 209, 163, 184)),
                    avatar(
                        t1: "Kamal",
                        img: "assets/images/me.png",
                        color: Color.fromARGB(255, 153, 154, 199)),
                    avatar(
                        t1: "Sana",
                        img: "assets/images/me.png",
                        color: Color.fromARGB(255, 161, 206, 189)),
                  ],
                ),
              ]),
            )
          ],
        ),
        SizedBox(height: screenHeight(context) * 0.03),
        Container(
          width: screenWidth(context),
          height: screenHeight(context) * 1,
          decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
          child: Column(
            children: [
              tiles2(
                ontap: (() {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                }),
                url: "assets/images/avatar4.png",
                time: "02:30 AM",
                name: "Taric Hacarulam",
                detail: "Hy Good Morning Alex",
              ),
              tiles1(
                ontap: (() {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                }),
                url: "assets/images/avatar1.png",
                time: "12:30 AM",
                name: "Taric Hacarulam",
                detail: "Hy Good Morning Alex",
              ),
              tiles1(
                ontap: (() {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                }),
                url: "assets/images/avatar2.png",
                time: "08:10 AM",
                name: "Taric Hacarulam",
                detail: "Hy Good Morning Alex",
              ),
              tiles2(
                ontap: (() {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                }),
                url: "assets/images/avatar5.png",
                time: "07:30 AM",
                name: "Taric Hacarulam",
                detail: "Hy Good Morning Alex",
              ),
              tiles2(
                ontap: (() {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                }),
                url: "assets/images/avatar6.png",
                time: "12:30 AM",
                name: "Taric Hacarulam",
                detail: "Hy Good Morning Alex",
              ),
              tiles1(
                ontap: (() {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                }),
                url: "assets/images/avatar3.png",
                time: "01:23 AM",
                name: "Taric Hacarulam",
                detail: "Hy Good Morning Alex",
              ),
              tiles1(
                ontap: (() {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                }),
                url: "assets/images/avatar3.png",
                time: "01:23 AM",
                name: "Taric Hacarulam",
                detail: "Hy Good Morning Alex",
              ),
              tiles1(
                ontap: (() {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                }),
                url: "assets/images/avatar3.png",
                time: "01:23 AM",
                name: "Taric Hacarulam",
                detail: "Hy Good Morning Alex",
              ),
              tiles1(
                ontap: (() {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                }),
                url: "assets/images/avatar3.png",
                time: "01:23 AM",
                name: "Taric Hacarulam",
                detail: "Hy Good Morning Alex",
              ),
              tiles1(
                ontap: (() {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                }),
                url: "assets/images/avatar3.png",
                time: "01:23 AM",
                name: "Taric Hacarulam",
                detail: "Hy Good Morning Alex",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

GestureDetector tiles2(
    {required String name,
    required Function() ontap,
    required String url,
    required String time,
    required String detail}) {
  return GestureDetector(
    onTap: ontap,
    child: ListTile(
        leading: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
            color: Color.fromARGB(255, 194, 109, 109),
            shape: BoxShape.circle,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 13),
          child: Text(name),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 2),
          child: Text(detail),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 20,
                  width: 20,
                  child: Center(
                    child: Text(
                      "3+",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent, shape: BoxShape.circle),
                ),
              ),
            ],
          ),
        )),
  );
}

GestureDetector tiles1(
    {required String name,
    required String url,
    required Function() ontap,
    required String time,
    required String detail}) {
  return GestureDetector(
    onTap: ontap,
    child: ListTile(
        leading: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
            shape: BoxShape.circle,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 13),
          child: Text(name),
        ),
        subtitle:
            Padding(padding: EdgeInsets.only(top: 2), child: Text(detail)),
        trailing: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.more_horiz_outlined,
                size: 15,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        )),
  );
}
