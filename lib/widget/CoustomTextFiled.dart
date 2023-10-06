import "package:e_app/consts/colors.dart";
import "package:e_app/consts/consts.dart";
import "package:flutter/material.dart";

Widget coustomeFiled({String? title, String? hint,Controler}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
fontFamily: semibold,
            color: textfieldGrey
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
border: InputBorder.none,
focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: redColor))
        ),
      ),
              5.heightBox,
    ],
  );
}
