import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:front_end_food/Widget/big_texts.dart';
import 'package:front_end_food/Widget/small_texts.dart';
import 'package:front_end_food/colors.dart';

import '../food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // mshan yrfa3 el row la foo2
          Column(
        children: [
          Container(
            child: Container(

              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
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
                          SmallTexts(text: "Narsingdi",color: Colors.black54),
                        Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(

                      width: 45,
                      height: 45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          FoodPageBody()
        ],
      ),
    );
  }
}
