import 'package:flutter/material.dart';

class style_mode {

 static ThemeData LightTheme = ThemeData(
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
     titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.black),
   ),
   scaffoldBackgroundColor: Color(0xFFb4b7aa),
   cardColor: Colors.white,
   textTheme: TextTheme(bodySmall: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black,),
     bodyMedium: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 25),

   ),
   dividerColor: Color(0xFFB7935F),
   accentColor: Color(0xFFB7935F),
   buttonColor: Color(0xFFB7935F),

 );

















 static ThemeData DarkTheme =  ThemeData(
   colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF141A2E),
     primary: Color(0xFF141A2E),
   ),
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     selectedItemColor: Color(0xFFB7935F),
     showSelectedLabels: true,
     showUnselectedLabels: false,
     selectedIconTheme:  IconThemeData(size: 35,) ,
     unselectedIconTheme: IconThemeData(size: 25,) ,
   ),
   appBarTheme: AppBarTheme(
       backgroundColor: Colors.transparent,
       elevation: 0.0,
       iconTheme: IconThemeData(color: Color(0xFFB7935F)),
       centerTitle: true,
       titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.black)
   ),
   scaffoldBackgroundColor: Color(0xff111522),
   cardColor: Color(0xFF141A2E),
   textTheme: TextTheme(bodySmall: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,),
     bodyMedium: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 25),

   ),
   dividerColor: Color(0xFFFACC1D),
   dividerTheme: DividerThemeData(color: Color(0xFFFACC1D),),
   accentColor: Color(0xFFFACC1D),
   buttonColor: Color(0xFFFACC1D),


 );













}