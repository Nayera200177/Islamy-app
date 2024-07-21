import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/app_colors.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),

        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Text('Holy Quran Radio',textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.skip_previous,size: 50,color: AppColors.primaryLightColor,),
              SizedBox(width: 20,),
              Icon(Icons.play_arrow,size: 50,color: AppColors.primaryLightColor),
              SizedBox(width: 20,),

              Icon(Icons.skip_next,size: 50,color: AppColors.primaryLightColor)
            ],
          ),
        ),

      ],

    );
  }
}
