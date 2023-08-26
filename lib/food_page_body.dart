import 'dart:math';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_end_food/Widget/big_texts.dart';
import 'package:front_end_food/Widget/small_texts.dart';
import 'package:front_end_food/colors.dart';

import 'Widget/icons_and_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  //adesh bbiyane mn el slider abel w ba3d
  PageController pageController = PageController(viewportFraction: 0.85);

  var currentpage = 0.0;
  double scaleFactor = 0.8;
  double height = 220;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      //adding "!" to assure flutter this will never be null
      setState(() {
        currentpage = pageController.page!;
        //int currentPageIndex = currentpage.toInt();
        // print("value is :" + currentPageIndex.toString());
      });
    });
  }

  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 280,

          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12, // Border color
              width: 1.0, // Border width
            ),
          ),
          //mshan tkoon scrollable
          child: PageView.builder(
            // conroller to make the page appear a little bit
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),


    new DotsIndicator(
    dotsCount: 5,
    position: currentpage,
    decorator: DotsDecorator(
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),)



      ],
    );
  }

  Widget _buildPageItem(int index) {
    // this matrix has x,y and z
    Matrix4 matrix = new Matrix4.identity();
    if (index == currentpage.floor()) {
      var currScale = 1 - (currentpage - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      print("current page: " + currentpage.toString());
      print("index page: " + index.toString());
      print("scaleFactor page: " + scaleFactor.toString());
      print("currScale page: " + currScale.toString());

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentpage + 1) {
      var currScale =
          scaleFactor + (currentpage - index + 1) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      print("current page: " + currentpage.toString());
      print("index page: " + index.toString());
      print("scaleFactor page: " + scaleFactor.toString());
      print("currScale page: " + currScale.toString());
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentpage - 1) {
      var currScale = 1 - (currentpage - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      print("current page: " + currentpage.toString());
      print("index page: " + index.toString());
      print("scaleFactor page: " + scaleFactor.toString());
      print("currScale page: " + currScale.toString());
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix =  Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, height*(1-scaleFactor)/2, 1);
    }

    // Implement the logic to build the individual page item
    // wrapping with a stack because the container by itself takes up the whole parent container
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            // hay el margin kaman bt3mel masafe ben el sliders
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.circular(30),
                //if index is even then the first color if not then the second color
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                    // la y3abbi kl el box
                    fit: BoxFit.cover,
                    image: AssetImage("assets/imgs/food2.jpg"))),
            // Return the widget for the page item
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 110,
              //width: 350,
              //margin btb3da 3an el 7awaf
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                    offset: Offset(0,5)
                  ),
                  BoxShadow(
                    color: Colors.white,
                      offset: Offset(-5 , 0)
                  )

                ],
                //if index is even then the first color if not then the second color
                color: Colors.white,
              ),
              // Return the widget for the page item
              child: Container(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  decoration: BoxDecoration(
                      // lama ma 7tet hey dal for moraba3
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1.0,
                      )),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigTexts(text: "Chineese Side"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            // for stars
                            Wrap(
                                children: List.generate(
                                    5,
                                    (index) => Icon(
                                          Icons.star,
                                          color: AppColors.mainColor,
                                          size: 15,
                                        ))),
                            // ben el boxes
                            SizedBox(width: 10),
                            SmallTexts(text: "4.5", color: Colors.grey),
                            SizedBox(width: 20),
                            SmallTexts(
                                text: "1287 comments", color: Colors.grey),
                          ],
                        ),
                        SizedBox(height: 15),
                        IconsAndWidget(),
                      ])),
            ),
          ),
        ],
      ),
    );
  }
}
