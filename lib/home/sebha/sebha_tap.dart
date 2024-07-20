import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int count = 0;
  List<String> Tasbee7=[
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'الله أكبر'
  ];
  int index = 0;
  double angle= 0;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/head_sebha_logo.png'),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Transform.rotate(
                angle: angle,
                child: InkWell(
                    onTap:(){
                      OnSep7aClicked();
                      angle += 360/33;
                      setState(() {

                      });
                    } ,
                    child: Image.asset('assets/images/body_sebha_logo.png')),
              ),
            ),
          ],
        ),
         Padding(
           padding: const EdgeInsets.only(top: 40.0),
           child: Text('Number of praises',textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,),
         ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30)
              ),
              width: 69,
              height: 81,
              child:
              Center(child: Text('$count',)),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(40)
              ),
              child:
               Text('${Tasbee7[index]}',),
            ),
          ),
        ),
      ],

    ) ;

  }
  OnSep7aClicked(){
    count++;
    if(count==33){
      index++;
      count=0;
    }
    if(index== Tasbee7.length){
      index=0;
    }
  }
}
