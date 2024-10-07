import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/app_colors.dart';
import 'package:islamy_app/home/quran/item_sura_detalis.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses =[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if(verses.isEmpty)
    {
      LoadFile(args.index);
    }
    return  Stack(
      children: [
      Image.asset('assets/images/default_bg.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,),
    Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.bodyLarge,),
        ),
      body:
      verses.isEmpty ?
          Center(child: CircularProgressIndicator(
            color: AppColors.primaryLightColor,
          ))
      :
      Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.05,
            horizontal: MediaQuery.of(context).size.width*0.06),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: ListView.separated(
          separatorBuilder: (context,index){
            return Divider(
              color: AppColors.primaryLightColor,
              thickness: 2,
            );

          },

          itemBuilder: (context,index)
            {
              return ItemSuraDetalis(content: verses[index], index: index,);
            },
          itemCount: verses.length,
        ),
      ),

    )
      ]
    );
  }

  void LoadFile(int index)async{
    String contant = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> lines = contant.split('\n');
    for(int i=0 ; i < lines.length; i++){
      print(lines[i]);
    }
    verses = lines;
    setState(() {

    });
  }
}
class SuraDetailsArgs{
  String name;
  int index;
  SuraDetailsArgs({required this.name, required this.index});
}
