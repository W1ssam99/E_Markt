import 'package:e_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButon({onPress, color, textColor, String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color, padding: const EdgeInsets.all(12)),
      onPressed: onPress,
      child: title!.text.color(textColor).fontFamily(bold).make());
}
