import 'package:get/get.dart';
class Dimensions {
  //scaling for different devices
//current height 781.0909090909091
 //current width 392


  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  //3.48 is a scaling factor
  //static double pageViewContainer= screenHeight/3.48;
  // hon el height tb3 220
  static double pageViewContainer= screenHeight/(781/220);
  // hey tb3 el 280
  static double pageViewMainContainer= screenHeight/(781/280);
  static double pageViewAlignContainer= screenHeight/(781/130);
  static double pageViewHeaderContainer= screenHeight/(781/45);
  static double sizeBox10h= screenHeight/(781/10);
  static double sizeBox10w= screenWidth/(392/10);
  static double sizeBox20w= screenWidth/(392/20);
  static double Padding45T= screenHeight/(781/20);
  static double Padding15B= screenHeight/(781/5);

  static double Search50W= screenWidth/(392/50);
  static double Search50H= screenHeight/(781/50);

  //static double font20= screenHeight/(781/20);
  //static double font12= screenHeight/(781/12);

  static double pageView= screenHeight/2.64;
  static double pageViewText= screenHeight/7.03;

  double DDh (int S) {
    return screenHeight/(781/S);
  }
  double DDw (int S) {
    return screenWidth/(392/S);
  }
}