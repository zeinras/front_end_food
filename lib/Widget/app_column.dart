import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_end_food/Widget/small_texts.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_texts.dart';
import 'icons_and_text.dart';

class AppColumn extends StatelessWidget {
  final String title;

  const AppColumn({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigTexts(text: title),
        SizedBox(height: Dimensions().DDh(20) ,),

        Row(
          children: [
            Wrap(children: List.generate(
              5,
                  (index) =>
                  Icon(
                    Icons.star,
                    color: AppColors.mainColor,
                    size: Dimensions().DDh(15),
                  ),
            ),
            ),
            SizedBox(width:Dimensions().DDw(15) ),
            SmallTexts(text: "4.5" ,color: AppColors.paraColor,),
            SizedBox(width:Dimensions().DDw(15) ),
            SmallTexts(text: "1725 comments" ,color: AppColors.paraColor,)
          ],
        ),
        SizedBox(height: Dimensions().DDh(20) ,),
        IconsAndWidget(text1: "normal",SB2: 90, text2: "1.7KM",SB4: 90, text3: "32min"),
        SizedBox(height: Dimensions().DDh(20) ,),


        // Add more content here
      ],
    );

  }
}
