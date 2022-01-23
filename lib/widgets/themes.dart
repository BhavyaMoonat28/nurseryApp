import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Padding kDefaultPadding = kDefaultPadding;
  static Color pLightColor = Colors.green.shade800;
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: Colors.green.shade50,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.lalezarTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.green.shade800,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 19),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      buttonTheme: ButtonThemeData(
          buttonColor: pLightColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          splashColor: Colors.black),
      scaffoldBackgroundColor: Colors.green.shade100,
      cardTheme: CardTheme(elevation: 5),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.green.shade100));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),
        textSelectionColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.green.shade800,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 19),
        ),
        listTileTheme: ListTileThemeData(),
        cardTheme: CardTheme(color: Colors.black54),
        drawerTheme: DrawerThemeData(backgroundColor: Colors.black87),
        //scaffoldBackgroundColor: Colors.black
      );
}
