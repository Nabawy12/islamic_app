import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/home/tabs/quran_tab/quran_details/verses.dart';
import 'package:untitled/home/tabs/quran_tab/sura_title_widget.dart';

class quran_details extends StatefulWidget {
  static const String routeName = "/quran_details" ;

   quran_details({super.key});

  @override
  State<quran_details> createState() => _quran_detailsState();
}

class _quran_detailsState extends State<quran_details> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    suraArguments arguments = ModalRoute.of(context)?.settings.arguments as suraArguments ;
    if(verses.isEmpty)LoadFile(arguments.index);
    return Container(
      decoration: BoxDecoration(
          image:  DecorationImage(
              fit:BoxFit.fill ,
              image: AssetImage("assets/images/background.png",)
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arguments.suraArgumets),
        ),
        body: verses.isEmpty ? Center(child: CircularProgressIndicator(),) :
            Card(
              elevation: 20 ,
              margin: EdgeInsetsDirectional.symmetric(horizontal: 29,vertical: 55),

              child: ListView.separated(itemBuilder: (context, index) => versess(verse: verses[index]),
                  separatorBuilder: (context, index) => SizedBox(height: 1,),
                  itemCount: verses.length
              ),
            ),
      ),
    );
  }

  void LoadFile(int index)async{
    String fileContent = await rootBundle.loadString('assets/quran/${index+1}.txt');
    List<String> suraLines = fileContent.split('?\n');
    verses = suraLines ;
    setState(() {

    });

  }
}
