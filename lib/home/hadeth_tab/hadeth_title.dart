import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home/hadeth_tab/hadeth_details.dart';
import 'package:untitled/home/hadeth_tab/hadeth_tab.dart';

class hadeth_title extends StatelessWidget {
  int index ;
  HadethItem  hadethItem ;
  hadeth_title({  required this.hadethItem, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, hadeth_details.routeName,
          arguments: hadethItem ,
        );
      },
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(8),
          child:  Text( "${hadethItem.HadethTitle}  ${index}",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
