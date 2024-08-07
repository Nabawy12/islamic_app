import 'package:flutter/material.dart';
import 'package:untitled/home/tabs/quran_tab/quran_details/quran_details.dart';

class suraTitleWidget extends StatelessWidget {
  String SuraTitleWidget ;
  String versNumber ;
  int index ;
   suraTitleWidget({required this.SuraTitleWidget, required this.versNumber, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, quran_details.routeName,
        arguments: suraArguments(suraArgumets: SuraTitleWidget, index: index)
        );
      },
      child: Container(
        alignment: Alignment.center,
        child:  IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Text(versNumber,style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,)),
              Container(
                width: 2,
                color: Theme.of(context).dividerColor,

              ),
              Expanded(child: Text(SuraTitleWidget,style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,)),
            ],
          ),
        ),
      ),
    );
  }
}

class suraArguments {
  String suraArgumets ;
  int index ;
  suraArguments({required this.suraArgumets, required this.index});
}
