import 'package:e_app/consts/consts.dart';
import 'package:flutter/material.dart';

class Cart_screen extends StatefulWidget {
  const Cart_screen({super.key});

  @override
  State<Cart_screen> createState() => _HomeScreebState();
}

class _HomeScreebState extends State<Cart_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
    child: "Cart is Empty!".text.color(darkFontGrey).makeCentered(),
    );
  }
}