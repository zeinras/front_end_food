import 'package:flutter/material.dart';
import 'package:front_end_food/Widget/app_column.dart';
import 'package:front_end_food/Widget/app_icon.dart';
import 'package:front_end_food/Widget/big_texts.dart';
import 'package:front_end_food/Widget/icons_and_text.dart';
import 'package:front_end_food/Widget/small_texts.dart';

import '../../Widget/expandable_text_widget.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              //width: double.maxFinite,
              height: Dimensions().DDh(340),

              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/imgs/food2.jpg"))),
            ),
          ),


          Positioned(
              top: Dimensions().DDh(45),
              left: Dimensions().DDw(20),
              right: Dimensions().DDw(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)

                ],
              )
          ),

          Positioned(
              top: Dimensions().DDh(290),
              left: Dimensions().DDw(0),
              right: Dimensions().DDw(0),

              child: Container(
                padding: EdgeInsets.only(left: Dimensions().DDw(20), top: Dimensions().DDw(30)),
                height: Dimensions().DDh(500),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions().DDh(30)),
                        topRight: Radius.circular(Dimensions().DDh(30)))
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [AppColumn(title: "Biriani")
                    ,
                    SizedBox(height: Dimensions().DDh(20)),
                    BigTexts(text: "Introduce",size:19),
                    ExpandableText(txt: "helloo"),
                  ],
                ),
              ),
          ),

        /*  Positioned(
              top: Dimensions().DDh(680),
              left: Dimensions().DDw(0),
              right: Dimensions().DDw(0),
              bottom:Dimensions().DDh(0),

              child:
              */ ],
      ),
              bottomNavigationBar: Container(
                height:  Dimensions().DDh(120),
                  padding: EdgeInsets.only(top: Dimensions().DDh(30),bottom: Dimensions().DDh(30),left: Dimensions().DDw(20),right:Dimensions().DDh(20)  ),
                  //color: Colors.grey,
                  decoration:
                  BoxDecoration(
                      color: Color(0xFFCAE9EB),
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions().DDh(40)),
                      topRight: Radius.circular(Dimensions().DDh(40)))),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Container(
                      padding: EdgeInsets.only(left: Dimensions().DDw(10),right: Dimensions().DDw(10) ,top: Dimensions().DDh(10),bottom: Dimensions().DDh(10) ),
                      decoration: BoxDecoration(
                      color: Color(0xFFE5E0F0),
                        borderRadius: BorderRadius.circular(Dimensions().DDh(20))

                    ),
                    child: Row(
                      children: [
                        Icon( Icons.remove,color: AppColors.paraColor,)
                      , BigTexts(text: "1"),
                      Icon(Icons.add,color: AppColors.paraColor)],
                    )),
                    Container(
                      height: Dimensions().DDh(120),
                      width: Dimensions().DDw(180),
                      padding: EdgeInsets.only(top: Dimensions().DDh(15)),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                          borderRadius: BorderRadius.circular(Dimensions().DDh(20))

                      ),
                      //margin: EdgeInsets.only(left: Dimensions().DDw(90)),
                      child:
                      BigTexts(text: " \$0.08 Add To Cart",color: Colors.white,),
                    )

                  ],))

    );
  }
}