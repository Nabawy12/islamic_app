import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled/home/hadeth_tab/hadeth_details.dart';
import 'package:untitled/home/homeScreen.dart';
import 'package:untitled/home/tabs/quran_tab/quran_details/quran_details.dart';
import 'package:untitled/providers/theme/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled/splash.dart';
import 'package:untitled/style/dark_mode%20&&%20light_mode.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(ChangeNotifierProvider(
      create: (context) => theme_providers(),
      child: MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider  = Provider.of<theme_providers>(context);
    return MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      supportedLocales: [
        Locale('ar'),// Arabic
        Locale('en'),// English
      ],
      locale: Locale(provider.currentLanguage_en),

      debugShowCheckedModeBanner: false,
      routes: {
       splashScreen.routeName : (_) => splashScreen(),
        homeScreen.routeName: (_) => homeScreen(),
        quran_details.routeName: (_) => quran_details(),
        hadeth_details.routeName: (_) => hadeth_details(),


      },

      theme: style_mode.LightTheme,
      themeMode: provider.currenTheme,
      darkTheme: style_mode.DarkTheme
    );
  }
}