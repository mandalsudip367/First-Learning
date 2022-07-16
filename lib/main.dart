import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/main_pages/cart_page.dart';
import 'package:flutter_application_1/Pages/main_pages/home_page.dart';
import 'package:flutter_application_1/Pages/main_pages/login_page.dart';
import 'package:flutter_application_1/Pages/main_pages/regist_page.dart';
import 'package:flutter_application_1/utilits/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lighttheme,
      darkTheme: MyTheme.darktheme(context),
      initialRoute: MyRoutes.cPage,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.registRoute: (context) => Regist_page(),
        MyRoutes.cPage: (context) => CartPage()
      },
    );
  }
}
