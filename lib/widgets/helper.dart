import 'package:flutter/material.dart';

import '../app/router.dart';

Image logo(String name) {
  return Image.asset(
    name,
  );
}

Padding floatbutton({required Icon icon, required Function() press}) {
  return Padding(
    padding: const EdgeInsets.only(right: 12),
    child: SizedBox(
      width: 40,
      child: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        onPressed: press,
        child: icon,
      ),
    ),
  );
}

Column avatar({
  required String t1,
  required String img,
  required Color color,
}) {
  return Column(
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
                  color: color,
                  shape: BoxShape.circle,
                  border: Border.all(width: 3, color: Colors.orange)),
              child: Container(
                height: 95,
                width: 95,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(t1),
      ),
    ],
  );
}

Container button1(
    {required String t1, Color? color, required Function() press}) {
  return Container(
    width: 300,
    height: 50,
    decoration: BoxDecoration(color: color),
    child: OutlinedButton(
      onPressed: press,
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(color: Colors.black, width: 1.0, style: BorderStyle.solid),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Text(
        t1,
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}

Container button2(
    {required String t1,
    required double h,
    required double w,
    Gradient? gradient,
    required Function() press}) {
  return Container(
    width: w,
    height: h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: gradient,
    ),
    child: OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        t1,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget storyButton({required String userImage, required String userName}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.white, width: 2.0),
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          userName,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
        )
      ],
    ),
  );
}
