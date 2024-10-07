import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/home/quran/sura_details_screen.dart';

class ItemHadethDetalis extends StatelessWidget {
  String content;
  ItemHadethDetalis({required this.content});
  @override
  Widget build(BuildContext context) {
    return Text(content,
    textAlign: TextAlign.center,
    style: Theme.of(context).textTheme.bodySmall,);
  }
}
