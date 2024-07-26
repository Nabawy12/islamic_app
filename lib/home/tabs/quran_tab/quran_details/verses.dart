import 'package:flutter/material.dart';

class versess extends StatelessWidget {
  String verse ;
   versess({required this.verse});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 15,vertical: 15),
      alignment: Alignment.center,
      child: Text(verse,textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
    );
  }
}
