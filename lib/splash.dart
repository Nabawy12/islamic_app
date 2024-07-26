import 'package:flutter/material.dart';
import 'package:untitled/home/homeScreen.dart';

class splashScreen extends StatelessWidget {
  static const String routeName = '/' ;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, homeScreen.routeName);
    },);
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset("assets/images/splash.png",fit: BoxFit.fill),
    );
  }
}
