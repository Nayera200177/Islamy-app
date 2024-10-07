import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/app_colors.dart';
import 'package:islamy_app/home/hadeth/hadeth_tap.dart';
import 'package:islamy_app/home/hadeth/item_hadeth_detalis.dart';
import 'package:islamy_app/home/quran/item_sura_detalis.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return  Stack(
      children: [
      Image.asset('assets/images/default_bg.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,),
    Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.bodyLarge,),
        ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height*0.05,
              horizontal: MediaQuery.of(context).size.width*0.06),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: ListView.builder(


            itemBuilder: (context,index)
              {
                return ItemHadethDetalis(content: args.content[index]);
              },
            itemCount: args.content.length,
          ),
        ),
      ),

    )
      ]
    );
  }
}
