import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/home/quran/sura_details_screen.dart';

class ItemSuraDetalis extends StatelessWidget {
  String content;
  int index;
  ItemSuraDetalis({required this.content,required this.index});
  @override
  Widget build(BuildContext context) {
    return Text('(${index+1} $content)',
    textAlign: TextAlign.center,
    style: Theme.of(context).textTheme.bodySmall,);
  }
}
