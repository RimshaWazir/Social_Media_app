import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:social_media/utils/media_query.dart';

import '../app/router.dart';

class User_Message extends StatefulWidget {
  const User_Message({super.key});

  @override
  State<User_Message> createState() => _User_MessageState();
}

class _User_MessageState extends State<User_Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white.withOpacity(0.4),
        elevation: 0.0,
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/avatar3.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rimsha Wazir",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Active Now",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Container(
              height: 40,
              width: 40,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(width: 1, color: Colors.grey)),
              ),
              child: IconButton(
                alignment: Alignment.center,
                color: Colors.red,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                },
                icon: Icon(
                  Icons.videocam,
                  size: 23,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 20),
            child: Container(
              height: 40,
              width: 40,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(width: 1, color: Colors.grey)),
              ),
              child: IconButton(
                alignment: Alignment.center,
                color: Colors.green,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRouter.userscreen,
                  );
                },
                icon: Icon(
                  Icons.call,
                  size: 23,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 20,
        ),
        children: [
          bubblechat(
            backcolor: Color.fromARGB(255, 235, 235, 255),
            color: Color.fromARGB(255, 100, 90, 90),
            sms: 'yesterday',
            pad: EdgeInsets.only(top: 10, left: 140),
          ),
          SizedBox(
            height: 20,
          ),
          bubblechat(
            backcolor: Color.fromARGB(255, 235, 235, 255),
            color: Colors.black,
            pad: EdgeInsets.only(top: 10, left: 10),
            sms: 'Hi Rehan, How are you!',
          ),
          SizedBox(
            height: 17,
          ),
          bubblechat(
            backcolor: Colors.blueAccent,
            color: Colors.white,
            pad: EdgeInsets.only(top: 10, left: 110),
            sms: 'I am Good, What about you !',
          ),
          SizedBox(
            height: 17,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              bubblechat(
                backcolor: Color.fromARGB(255, 235, 235, 255),
                color: Colors.black,
                pad: EdgeInsets.only(top: 10, left: 10),
                sms: 'Do you want a burger ?',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13, top: 5),
                child: Text(
                  "YESTERDAY, 12:40 AM",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 17,
          ),
          bubblechat(
            backcolor: Colors.blueAccent,
            color: Colors.white,
            pad: EdgeInsets.only(top: 10, left: 130),
            sms: 'Whould be awesome ! 😍 ',
          ),
          SizedBox(
            height: 17,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color.fromARGB(255, 243, 243, 253),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image(image: AssetImage("assets/images/voice.png")),
                          SizedBox(
                            width: 2,
                          ),
                          Text("02:30"),
                        ],
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 253),
                      shape: BoxShape.circle),
                  child: Center(
                      child: Text(
                    "+",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                  ))),
              Container(
                  width: 290,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Color.fromARGB(255, 243, 243, 253),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text("Type Message Here"),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Container(
              width: screenWidth(context),
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: IconButton(
                      icon: Icon(Icons.image),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 175, 72, 194)),
                    child: IconButton(
                      icon: Icon(Icons.location_pin),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 253, 167, 55)),
                    child: IconButton(
                      icon: Icon(Icons.file_present),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 255, 87, 143)),
                    child: IconButton(
                      icon: Icon(Icons.contacts),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row bubblechat(
      {required String sms,
      required EdgeInsetsGeometry pad,
      required Color color,
      required Color backcolor}) {
    return Row(
      children: [
        Padding(
          padding: pad,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14), color: backcolor),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    sms,
                    style: TextStyle(fontSize: 16, color: color),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("14:40")
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
