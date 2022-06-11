import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get lighttheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      cardColor: Colors.white,
      canvasColor: Colors.white,
      buttonColor: Colors.blue,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        // centerTitle: true
      )
      // primaryTextTheme: GoogleFonts.latoTextTheme()
      );
  static ThemeData darktheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.pink,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: Colors.grey,
      accentColor: Colors.white,
      drawerTheme: DrawerThemeData(backgroundColor: Colors.black),
      buttonColor: Colors.indigo,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        // centerTitle: true
      ));
}
