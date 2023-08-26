import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_end_food/Widget/small_texts.dart';

import '../colors.dart';

class IconsAndWidget extends StatelessWidget {
  final int SB1;
  final int SB2;
  final int SB3;
  final int SB4;
  final int SB5;
  const IconsAndWidget({Key? key,
    this.SB1=10,
    this.SB2=30,
    this.SB3=5,
    this.SB4=30,
    this.SB5=10

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Row(children: [
        Icon(Icons.circle,color: AppColors.yellowColor,size: 18,),
        SizedBox(width: SB1.toDouble()),
        SmallTexts(text: "Normal",color:AppColors.paraColor,size: 10 ),
        SizedBox(width:SB2.toDouble()),
        Icon(Icons.location_on_sharp ,color: AppColors.mainColor,size: 20,),
        SizedBox(width:SB3.toDouble()),
        SmallTexts(text: "1.7KM",color:AppColors.paraColor,size: 10,),
        SizedBox(width: SB4.toDouble()),
        Icon(Icons.access_time_rounded ,color: AppColors.iconColor2,size: 20,),
        SizedBox(width: SB5.toDouble()),
        SmallTexts(text: "32 min",color:AppColors.paraColor,size: 10,),


      ],)
    );
  }
}
