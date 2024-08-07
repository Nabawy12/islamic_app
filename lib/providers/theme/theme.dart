import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class theme_providers extends ChangeNotifier {

  ThemeMode currenTheme = ThemeMode.system ;

  String currentLanguage_en = 'ar';










  void changeLanguage(String newlanguage){
    if(newlanguage == currentLanguage_en)
    {
      return ;
    }
    currentLanguage_en = newlanguage ;

    notifyListeners();

  }




  void changeThemeMoe(ThemeMode newTheme) {

    if(currenTheme == ThemeMode.system) return ;

    currenTheme = newTheme;

    notifyListeners();

  }


 String getBackGroundImagePath(){
    return currenTheme == ThemeMode.system ? "assets/images/background.png" : "assets/images/background_dark.png" ;

  }
}