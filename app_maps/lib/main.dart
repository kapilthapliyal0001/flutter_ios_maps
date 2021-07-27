import 'package:soqua/screens/google_maps.dart';
import 'package:soqua/screens/home_page.dart';
import 'package:soqua/screens/login_page.dart';
import 'package:soqua/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// main function calls first always;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key})
      : super(key: key); // gen no need for this constructor;

  @override
  Widget build(BuildContext context) {
    // build calls on every setstate;
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light, // used to change whole UI;
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily
          // primaryTextTheme: GoogleFonts.latoTextTheme(),
          ),
      initialRoute: MyRoutes.loginRoute, // Landing Route;
      debugShowCheckedModeBanner: false, // Debug Banner;

      routes: {
        // App Routes;
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.googleMaps: (context) => GoogleMaps()
      },
    );
  }
}
