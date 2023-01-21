import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/app/router.dart';

class social_Media extends StatelessWidget {
  const social_Media({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: GoogleFonts.poppinsTextTheme()),
      onGenerateRoute: (settings) {
        return AppRouter.onGenerateRoute(settings);
      },
    );
  }
}
