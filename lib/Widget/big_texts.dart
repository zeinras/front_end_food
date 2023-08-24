import 'package:flutter/cupertino.dart';

class BigTexts extends StatelessWidget {
  // "?" to make it optional
  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;


//constructer
  BigTexts({Key? key, this.color= const Color(0xFF332d2b), required this.text,
    // hay default value  .. elipses mashan iza el text tawel ykamlo n2at ...
    this.overflow = TextOverflow.ellipsis,
    this.size = 20}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(text, overflow: overflow,
  maxLines: 1,
      style: TextStyle(
          color: color,
          fontSize: size,

          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto'),


    );
  }}
