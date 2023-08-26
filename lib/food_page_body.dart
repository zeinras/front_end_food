import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_end_food/Widget/big_texts.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  //adesh bbiyane mn el slider abel w ba3d
  PageController pageController= PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 280,

      decoration:
      BoxDecoration( color: Colors.red,
        border: Border.all(
        color: Colors.black12, // Border color
        width: 1.0, // Border width
    ),),
      //mshan tkoon scrollable
      child: PageView.builder(
        // conroller to make the page appear a little bit
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    // Implement the logic to build the individual page item
    // wrapping with a stack because the container by itself takes up the whole parent container
    return Stack(
      children:[
        Container(
        height: 220,
        // hay el margin kaman bt3mel masafe ben el sliders
        margin: EdgeInsets.only(left: 5, right: 5),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(30),
            //if index is even then the first color if not then the second color
            color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
         image: DecorationImage(
           // la y3abbi kl el box
             fit: BoxFit.cover,

           image: AssetImage("assets/imgs/food1.jpg")
         )
            ),
        // Return the widget for the page item
  ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 120,
            //width: 350,
            //margin btb3da 3an el 7awaf
            margin: EdgeInsets.only(left: 20, right: 20,bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                //if index is even then the first color if not then the second color
                color: Colors.white,

            ),
            // Return the widget for the page item
          child: Container(
            padding: EdgeInsets.only(top:10,left: 15,right: 15),
            decoration: BoxDecoration(border: Border.all(
              color: Colors.black12, // Border color
              width: 1.0,
            )) 
            ,child: Column(
            children: [
              BigTexts(text: "Chineese Side")
              
            ],
          ),

          ),
          ),
        )
    ],);
    }
}
