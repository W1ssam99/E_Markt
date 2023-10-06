import 'package:e_app/consts/consts.dart';
import 'package:e_app/controler/home_screen.dart';
import 'package:e_app/views/cart_screen/cart_screen.dart';
import 'package:e_app/views/category_screen/category_screen.dart';
import 'package:e_app/views/homeScreen/home_screen.dart';
import 'package:e_app/views/profile_screen/profile_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controler = Get.put(HomeControler());

    var NavBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: "Category"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: "Cart"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: "Profile"),
    ];
    var NavBody = [
      const HomeScreen(),
      const Category_screen(),
      const Cart_screen(),
      const Profile_screen(),
    ];

    return Scaffold(
      body:Column(
        children: [
        Obx(()=>  Expanded(child: NavBody.elementAt(controler.CurrentNavIndex.value))
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controler.CurrentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          backgroundColor: whiteColor,
          items: NavBarItem,
          onTap: (value) {
            controler.CurrentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
