

import 'package:flutter/cupertino.dart';

import '../utils/dimensions.dart';



class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backGroundColor;
  final Color iconColor;
  final int size;


  const AppIcon({Key? key,
  required this.icon,
    this.backGroundColor=const Color(0xFFfcf4e4) ,
    this.iconColor=const Color(0xFF756d54) ,
  this.size= 45,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {



    return Container(padding: EdgeInsets.only(left: 5),
      width: Dimensions().DDw(size) ,
        height: Dimensions().DDh(size),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions().DDh(40)),
        color: backGroundColor
      ),
      
      child: Icon(icon,color:iconColor )
    );
  }
}
