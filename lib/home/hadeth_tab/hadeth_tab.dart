import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/home/hadeth_tab/hadeth_details.dart';
import 'package:untitled/home/hadeth_tab/hadeth_title.dart';

class hadethTab extends StatefulWidget {
  const hadethTab({super.key});

  @override
  State<hadethTab> createState() => _hadethTabState();
}

class _hadethTabState extends State<hadethTab> {
  List<HadethItem> hadethlistitem = [] ;
  @override
  Widget build(BuildContext context) {
    loadhadethFile();
    return Scaffold(
      body:
      hadethlistitem.isEmpty ? Center(child: CircularProgressIndicator(),) :
      Column(
        children: [
          Expanded(flex:1,child: Image(image: AssetImage('assets/images/hadith_header.png'))),
          Container(
            alignment: Alignment.center,
            //width: double.infinity,
            decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(color: Colors.black,width: 2))
            ),
            child: Text("الأحاديث",style: TextStyle(fontSize:25,fontWeight: FontWeight.w600 ),),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: hadethlistitem.length,
                    itemBuilder: (context, index) =>
                        hadeth_title(hadethItem: hadethlistitem[index],index: index+1),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

  }

  void loadhadethFile()async{
    String fileContent = await rootBundle.loadString("assets/hadeth/ahadeth.txt") ;

    List<String> allAhadeth = fileContent.trim().split("#") ;

    for(int i = 0 ; i<allAhadeth.length; i++ ){
      List<String> hadethlines = allAhadeth[i].trim().split("\n");
      String hadethTitle = hadethlines[0];
      String hadethContent = hadethlines.join("\n");

      HadethItem hadethItem = HadethItem(HadethContent: hadethContent, HadethTitle: "الحديث رقم");

      hadethlistitem.add(hadethItem) ;
      setState(() {

      });

    }

  }
}
class HadethItem{
  String HadethTitle ;
  String HadethContent ;
  HadethItem({required this.HadethContent, required this.HadethTitle});

}
