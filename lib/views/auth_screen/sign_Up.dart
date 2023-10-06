import 'package:e_app/home.dart';
import 'package:flutter/material.dart';
import 'package:e_app/consts/consts.dart';
import 'package:e_app/consts/lists.dart';
import 'package:e_app/widget/CoustomTextFiled.dart';
import 'package:e_app/widget/appLogo.dart';
import 'package:e_app/widget/bg_widget.dart';
import 'package:e_app/widget/our_botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? isCheck = false;
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
                  title: name,
                  hint: namehint,
                ),
                coustomeFiled(
                  title: email,
                  hint: emailHint,
                ),
                coustomeFiled(
                  title: password,
                  hint: passwordHint,
                ),
                coustomeFiled(
                  title: retyprePassword,
                  hint: retyprePasswordhint,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetpass.text.make())),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      }),
                  5.widthBox,
                  Expanded(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "I agree to the",
                          style:
                              TextStyle(fontFamily: regular, color: fontGrey)),
                      TextSpan(
                          text: termsAndCondation,
                          style:
                              TextStyle(fontFamily: regular, color: redColor)),
                      TextSpan(
                          text: "& ",
                          style:
                              TextStyle(fontFamily: regular, color: fontGrey)),
                      TextSpan(
                          text: privecyAndPolicy,
                          style:
                              TextStyle(fontFamily: regular, color: redColor))
                    ])),
                  ),
                ]),
                5.heightBox,
                ourButon(
                  color: isCheck == true ? redColor : lightGrey,
                  title: login,
                  textColor: isCheck == true ? whiteColor : redColor,
                  onPress: () {
                    Get.to(() => Home());
                  },
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                        text: alreadyHaveAcount,
                        style: TextStyle(fontFamily: bold, color: fontGrey)),
                    TextSpan(
                        text: login,
                        style: TextStyle(fontFamily: bold, color: redColor)),
                  ]),
                ).onTap(() {
                  Get.back();
                })
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
