import 'package:flutter/material.dart';
import 'package:islamy_app/home/hadeth/hadeth_details_screen.dart';
import 'package:islamy_app/home/home_screen.dart';
import 'package:islamy_app/home/quran/sura_details_screen.dart';
import 'package:islamy_app/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyThemeData.LightMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('ar'),



    );
  }
}
