import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:front_end_food/Widget/big_texts.dart';
import 'package:front_end_food/Widget/small_texts.dart';
import 'package:front_end_food/utils/colors.dart';
import 'package:front_end_food/utils/dimensions.dart';

import '../food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current height is " + MediaQuery.of(context).size.height.toString());
    print("current height is " + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body:
          // mshan yrfa3 el row la foo2
          Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 5),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5),
              ),
              margin: EdgeInsets.only(
                  top: Dimensions.Padding45T, bottom: Dimensions.Padding15B),
              padding: EdgeInsets.only(
                  left: Dimensions().DDw(20), right: Dimensions().DDw(20)),
              child:
                  //default el row howe center
                  Row(
                //bt5alli el container yamin wel kitabe ysar l2no btsawi ab3ad msafe benaton possible
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //default el column hiye up
                  Column(
                    children: [
                      BigTexts(
                        text: "Bangladesh",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallTexts(text: "Narsingdi", color: Colors.black54),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions().DDw(40),
                      height: Dimensions.pageViewHeaderContainer,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions().DDh(25),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.mainColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: FoodPageBody()))
        ],
      ),
    );
  }
}
