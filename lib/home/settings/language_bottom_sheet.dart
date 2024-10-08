import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/app_colors.dart';

class LanguageBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(15),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.english,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.primaryLightColor
                ),),
                Icon(Icons.check,size: 25,color: AppColors.primaryLightColor,)
              ],
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){},
            child: Text(AppLocalizations.of(context)!.arabic,
              style: Theme.of(context).textTheme.bodySmall,),
          ),

        ],
      ),
    );
  }
}
