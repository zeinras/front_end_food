import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class ExpandableText extends StatefulWidget {
final String txt;

  const ExpandableText({Key? key, required this.txt}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  @override
  Widget build(BuildContext context) {
   late String firstHalf;
   late String lastHalf;
   bool hiddenText=true;
   final int theight;
   return Container(
     margin: EdgeInsets.only(top: Dimensions().DDh(10) ),
height: Dimensions().DDh(150),
     width: Dimensions().DDw(350),
     decoration: BoxDecoration(
       color: Colors.blue,
     ),

   );
  }
}
