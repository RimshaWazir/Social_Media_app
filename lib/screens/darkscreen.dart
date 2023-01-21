import 'package:flutter/material.dart';
import '../app/router.dart';

import '../widgets/helper.dart';
import 'message.dart';

class DarkScreen extends StatefulWidget {
  const DarkScreen({super.key});
  @override
  State<DarkScreen> createState() => _DarkScreenState();
}

class _DarkScreenState extends State<DarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 16, 1, 36),
            Color.fromARGB(255, 28, 48, 5)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: logo("assets/images/top_corner.png"),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: logo("assets/images/back.png"),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 140,
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: logo("assets/images/large_circle.png"),
                    ),
                  ),
                  Positioned(
                    right: 12,
                    bottom: 120,
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: logo("assets/images/small_circle.png"),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 100,
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: logo("assets/images/medium_circle.png"),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    bottom: 100,
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: logo("assets/images/border_circle.png"),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: -40,
                    bottom: 0,
                    child: SizedBox(
                        height: 300,
                        width: 300,
                        child: logo("assets/images/girl.png")),
                  ),
                ]),
            const SizedBox(
              height: 15,
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
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Row(
                      children: const [
                        Text(
                          "Make New Friends",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          " !",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: logo("assets/images/bottom_corner.png"),
                              ),
                            ]),
                        const Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Text(
                            "Find people with the same\n interest as you",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            button1(
                press: () {
                  Navigator.of(context).pushNamed(
                    AppRouter.lightScreen,
                  );
                },
                t1: 'Sign Up',
                color: Colors.transparent),
            const SizedBox(height: 10),
            button2(
              h: 50,
              w: 300,
              press: () {
                Navigator.of(context).pushNamed(
                  AppRouter.lightScreen,
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
          ],
        ),
      ),
    );
  }
}
