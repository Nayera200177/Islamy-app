import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/app_colors.dart';

import 'language_bottom_sheet.dart';

class SettingsTap extends StatefulWidget {

  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyLarge,),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.primaryLightColor,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.english),
                  Icon(Icons.arrow_drop_down,size: 50,)
                ],
              )
            ),
          )
        ],

      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context) => LanguageBottomSheet());
  }
}
