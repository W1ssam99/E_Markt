import 'package:e_app/consts/consts.dart';
import 'package:e_app/consts/lists.dart';
import 'package:e_app/views/auth_screen/sign_Up.dart';
import 'package:e_app/home.dart';
import 'package:e_app/widget/CoustomTextFiled.dart';
import 'package:e_app/widget/appLogo.dart';
import 'package:e_app/widget/bg_widget.dart';
import 'package:e_app/widget/our_botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.07).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(22).make(),
            10.heightBox,
            Column(
              children: [
                coustomeFiled(
                  title: "Email",
                  hint: "Enter your email",
                ),
                coustomeFiled(
                  title: "Password",
                  hint: "Enter your password",
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetpass.text.make())),
                5.heightBox,
                ourButon(
                  color: redColor,
                  title: login,
                  textColor: whiteColor,
                  onPress: () {
                    Get.to(() => Home());
                  },
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                creteAcount.text.color(fontGrey).make(),
                5.heightBox,
                ourButon(
                  color: lightGolden,
                  title: signUp,
                  textColor: redColor,
                  onPress: () {
                    Get.to(() => SignUp());
                  },
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: lightGrey,
                              child: Image.asset(
                                SocialIcons[index],
                                width: 30,
                              ),
                            ),
                          )).toList(),
                ),
              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
