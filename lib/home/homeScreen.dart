import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/home/hadeth_tab/hadeth_tab.dart';
import 'package:untitled/home/radio_tab/radio_tab.dart';
import 'package:untitled/home/tabs/quran_tab/quran_tab.dart';
import 'package:untitled/home/sebha_tab/sebha_tab.dart';
import 'package:untitled/providers/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class homeScreen extends StatefulWidget {
  static const  String routeName = '/home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIcon = 0 ;
  @override
  Widget build(BuildContext context) {
    var provider  = Provider.of<theme_providers>(context);

    return Container(
      decoration: BoxDecoration(
          image:  DecorationImage(
              fit:BoxFit.fill ,
              image:  AssetImage(provider.getBackGroundImagePath()),

          ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title:
              Text(AppLocalizations.of(context)!.app_title,style: Theme.of(context).textTheme.bodySmall,),

          actions: [
            PopupMenuButton(itemBuilder: (context) => [
               PopupMenuItem(
                 onTap: () => provider.changeLanguage("en"),
                 padding: EdgeInsets.all(8),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Icon(Icons.language_rounded),
                     SizedBox(width: 5),
                     Text("Engllish"),
                   ],
                 ),
               ),
              PopupMenuItem(
                onTap: () => provider.changeLanguage("ar"),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
               children: [
               Icon(Icons.language_rounded),
                 SizedBox(width: 8),
               Text("Arabic"),
               ],
               ),
              )
            ],
            )
          ],
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
               BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),label: AppLocalizations.of(context)!.button_sheet_1),
               BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/hadeth.png")),label: AppLocalizations.of(context)!.button_sheet_2),
               BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),label: AppLocalizations.of(context)!.button_sheet_3),
               BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),label: AppLocalizations.of(context)!.button_sheet_4),

             ]
         ),
       ),
        body: tabs[selectedIcon],
      ),
    );
  }

  List<Widget> tabs = [quranTab(),hadethTab(),sebhaTab(),radioTab(),];
}