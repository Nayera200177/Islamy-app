
import 'package:flutter/material.dart';
import 'package:islamy_app/app_colors.dart';
import 'package:islamy_app/home/hadeth/hadeth_tap.dart';
import 'package:islamy_app/home/quran/quran_tap.dart';
import 'package:islamy_app/home/radio/radio_tap.dart';
import 'package:islamy_app/home/sebha/sebha_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/default_bg.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){
                selectedIndex = index;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
              label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
              label: 'Hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
              label: 'Sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
              label: 'Radio'),
              ],
            ),
          ),
          body: tabs[selectedIndex],

        ),
      ],
    );
  }
  List<Widget> tabs =[
    QuranTap(),HadethTap(),SebhaTap(),RadioTap()
  ];
}
