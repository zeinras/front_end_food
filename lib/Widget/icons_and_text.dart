import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_end_food/Widget/small_texts.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class IconsAndWidget extends StatelessWidget {
  final int SB1;
  final int SB2;
  final int SB3;
  final int SB4;
  final int SB5;
  final String text1;
  final String text2;
  final String text3;


  const IconsAndWidget({Key? key,
    this.SB1=5,
    this.SB2=20,
    this.SB3=5,
    this.SB4=20,
    this.SB5=5,
    required this.text1,
    required this.text2,
    required this.text3

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

      child:
      Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.circle,color: AppColors.yellowColor,size: Dimensions().DDh(18),),
        SizedBox(width:Dimensions().DDw(SB1)),
        SmallTexts(text: text1 ,color:AppColors.paraColor,size: 10 ),
        SizedBox(width:Dimensions().DDw(SB2)),
        Icon(Icons.location_on_sharp ,color: AppColors.mainColor,size: Dimensions().DDh(20),),
        SizedBox(width:Dimensions().DDw(SB3)),
        SmallTexts(text: text2,color:AppColors.paraColor,size: 10,),
        SizedBox(width: Dimensions().DDw(SB4)),
        Icon(Icons.access_time_rounded ,color: AppColors.iconColor2,size: Dimensions().DDh(20),),
        SizedBox(width: Dimensions().DDw(SB5)),
        SmallTexts(text: text3,color:AppColors.paraColor,size: 10,),


      ],)
    );
  }
}
