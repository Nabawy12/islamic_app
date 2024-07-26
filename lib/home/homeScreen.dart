import 'package:flutter/material.dart';
import 'package:untitled/home/hadeth_tab/hadeth_tab.dart';
import 'package:untitled/home/radio_tab/radio_tab.dart';
import 'package:untitled/home/tabs/quran_tab/quran_tab.dart';
import 'package:untitled/home/sebha_tab/sebha_tab.dart';

class homeScreen extends StatefulWidget {
  static const  String routeName = '/home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIcon = 0 ;
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          image:  DecorationImage(
              fit:BoxFit.fill ,
              image: AssetImage("assets/images/background.png",)
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامي"),
        ),
       bottomNavigationBar: Theme(
         data: Theme.of(context).copyWith(
           canvasColor: Theme.of(context).colorScheme.primary,
         ),
         child: BottomNavigationBar(
           currentIndex: selectedIcon,
             onTap: (index) {
             selectedIcon = index ;
             setState(() {

             });
             },
             items: [
               BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),label: 'Quran'),
               BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/hadeth.png")),label: 'Hadeth'),
               BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),label: 'Sebha'),
               BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),label: 'Radio'),

             ]
         ),
       ),
        body: tabs[selectedIcon],
      ),
    );
  }

  List<Widget> tabs = [quranTab(),hadethTab(),sebhaTab(),radioTab(),];
}
