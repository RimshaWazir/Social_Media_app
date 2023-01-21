import 'package:flutter/material.dart';
import 'package:social_media/widgets/helper.dart';

import '../app/router.dart';
import 'message.dart';

class LightScreen extends StatefulWidget {
  const LightScreen({super.key});

  @override
  State<LightScreen> createState() => _LightScreenState();
}

class _LightScreenState extends State<LightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 70),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    logo("assets/images/big_border.png"),
                    Positioned(
                        right: 50,
                        top: 50,
                        child: logo("assets/images/small_border.png")),
                    Positioned(
                        top: 90,
                        right: 90,
                        child: logo("assets/images/man.png")),
                    Positioned(
                        right: 150,
                        top: 45,
                        child: logo("assets/images/blue.png")),
                    Positioned(
                        left: 268,
                        top: 160,
                        child: logo("assets/images/red.png")),
                    Positioned(
                        right: 272,
                        top: 160,
                        child: logo("assets/images/orange.png")),
                    Positioned(
                        left: 250,
                        top: 220,
                        child: logo("assets/images/purple_circle.png")),
                    Positioned(
                        left: 240,
                        top: 260,
                        child: logo("assets/images/purple.png")),
                    Positioned(
                        left: 250,
                        top: 215,
                        bottom: 0,
                        child: SizedBox(
                            height: 110,
                            width: 110,
                            child: logo("assets/images/pink_girl.png"))),
                    Positioned(
                        right: 250,
                        top: 30,
                        child: logo("assets/images/orange_circle.png")),
                    Positioned(
                        right: 300,
                        top: 30,
                        child: logo("assets/images/orange.png")),
                    Positioned(
                        right: 250,
                        top: 30,
                        child: logo("assets/images/yellow_girl.png")),
                    Positioned(
                        left: 290,
                        top: 20,
                        child: logo("assets/images/yellow_circle.png")),
                    Positioned(
                        left: 290,
                        top: 20,
                        child: logo("assets/images/lightblue_boy.png")),
                    Positioned(
                        left: 310,
                        top: 115,
                        child: logo("assets/images/yellow_dot.png")),
                    Positioned(
                        right: 280,
                        top: 190,
                        child: logo("assets/images/lightblue_circle.png")),
                    Positioned(
                        right: 275,
                        top: 190,
                        child: logo("assets/images/black_boy.png")),
                    Positioned(
                        right: 275,
                        top: 265,
                        child: logo("assets/images/lightblue.png")),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "The Best Social App To",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Row(
                        children: const [
                          Text(
                            "Make New Friends !",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: logo("assets/images/bottom_brown.png"),
                                ),
                              ]),
                          const Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              "Find people with the same\n interest as you",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 5),
              button2(
                h: 50,
                w: 300,
                press: () {
                  Navigator.of(context).pushNamed(
                    AppRouter.messageScreen,
                  );
                },
                t1: 'Log In',
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 192, 176, 28),
                    Colors.deepOrange,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              const SizedBox(height: 10),
              button1(
                  press: () {
                    Navigator.of(context).pushNamed(
                      AppRouter.home,
                    );
                  },
                  t1: 'Sign Up',
                  color: Colors.transparent),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
