import 'package:e_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeButton({width,height,icon,onPress,String? title}) {
  return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon,width: 26,),
      10.heightBox,
      title!.text.white.fontFamily(semibold).color(darkFontGrey).make(),

    ],
  ).box.rounded.white.size(width,height ).make());
}
