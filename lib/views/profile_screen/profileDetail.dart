import "package:flutter/material.dart";
import "package:e_app/consts/consts.dart";

Widget detailCard({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).color(darkFontGrey).make(),
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .rounded
      .height(60)
      .width(width)
      .padding(EdgeInsets.all(10))
      .make();
}
