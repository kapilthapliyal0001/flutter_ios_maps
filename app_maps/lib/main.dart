import 'package:app_maps/screens/home_page.dart';
import 'package:app_maps/screens/login_page.dart';
import 'package:app_maps/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: GoogleFonts.lato().fontFamily
          // primaryTextTheme: GoogleFonts.latoTextTheme(),
          ),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRuote: (context) => HomePage(),
        MyRoutes.loginRuote: (context) => LoginPage()
      },
    );
  }
}
