import 'package:flutter/cupertino.dart';

class SmallTexts extends StatelessWidget {
  // "?" to make it optional
  final Color? color;
  final String text;
  double size;
  double height;


//constructer
  SmallTexts({Key? key, this.color= const Color(0xFF89dad0), required this.text,

    this.size = 12,this.height=1.2,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(text,

      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
      height: height),


    );
  }}
