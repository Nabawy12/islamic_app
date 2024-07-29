import 'package:flutter/material.dart';
import 'package:untitled/home/hadeth_tab/hadeth_tab.dart';

class hadeth_details extends StatefulWidget {
  static const String routeName = "/hadeth_details" ;
  const hadeth_details({super.key});

  @override
  State<hadeth_details> createState() => _hadeth_detailsState();
}

class _hadeth_detailsState extends State<hadeth_details> {
  @override
  Widget build(BuildContext context) {
    var hadethcontent = ModalRoute.of(context)?.settings.arguments as  HadethItem ;
    return Container(
      decoration: BoxDecoration(
          image:  DecorationImage(
              fit:BoxFit.fill ,
              image: AssetImage("assets/images/background.png",)
          )
      ),
      child:  Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Card(
              elevation: 20 ,
              margin: EdgeInsetsDirectional.symmetric(horizontal: 29,vertical: 55),

              child: Container(
                child: Text(hadethcontent.HadethContent,textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
              )
              ),
          ),
        ),
        ),

      );
  }

}


