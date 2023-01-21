import 'package:flutter/material.dart';
import 'package:social_media/app/splash.dart';
import 'package:social_media/screens/darkscreen.dart';
import 'package:social_media/screens/home.dart';
import 'package:social_media/screens/lightscreen.dart';
import 'package:social_media/screens/message.dart';

import '../screens/user_message.dart';

class AppRouter {
  static const String home = '/home';
  static const String splash = '/';
  static const String darkScreen = '/darkscreen';
  static const String lightScreen = '/lightscreen';
  static const String messageScreen = '/message';
  static const String userscreen = '/user_message';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const Splash());
      case home:
        return MaterialPageRoute(builder: (context) => const Home());
      case darkScreen:
        return MaterialPageRoute(builder: (context) => const DarkScreen());
      case lightScreen:
        return MaterialPageRoute(builder: (context) => const LightScreen());
      case messageScreen:
        return MaterialPageRoute(builder: (context) => const Message());
      case userscreen:
        return MaterialPageRoute(builder: (context) => const User_Message());
    }
  }
}
