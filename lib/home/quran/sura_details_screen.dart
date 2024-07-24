import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura_details';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    LoadFile(args.index);
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
        )
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
  }
}
class SuraDetailsArgs{
  String name;
  int index;
  SuraDetailsArgs({required this.name, required this.index});
}
