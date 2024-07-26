import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/home/homeScreen.dart';
import 'package:untitled/home/tabs/quran_tab/quran_details/quran_details.dart';

import 'package:untitled/splash.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
       splashScreen.routeName : (_) => splashScreen(),
        homeScreen.routeName: (_) => homeScreen(),
        quran_details.routeName: (_) => quran_details(),

      },

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFB7935F),
            primary: Color(0xFFB7935F),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedIconTheme:  IconThemeData(size: 35,) ,
          unselectedIconTheme: IconThemeData(size: 25,) ,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.black)
        ),
        scaffoldBackgroundColor: Colors.transparent,
      ),
    );
  }
}