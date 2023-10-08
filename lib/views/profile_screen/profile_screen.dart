import 'package:e_app/consts/consts.dart';
import 'package:e_app/consts/lists.dart';
import 'package:e_app/views/profile_screen/profileDetail.dart';
import 'package:e_app/widget/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({super.key});

  @override
  State<Profile_screen> createState() => _HomeScreebState();
}

class _HomeScreebState extends State<Profile_screen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  imgProfile2,
                  width: 100,
                  fit: BoxFit.cover,
                )
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .color(Colors.white)
                    .make(),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy user".text.fontFamily(semibold).white.make(),
                    "user@mail.com".text.fontFamily(semibold).white.make(),
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                      color: Colors.white,
                    )),
                    onPressed: () {},
                    child: "Edit Profile".text.white.make()),
                7.widthBox
              ],
            ),
            20.heightBox,
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           detailCard(count: "00",title: "In your cart",width: context.screenWidth/3.5,),
           detailCard(count: "00",title: "In your cart",width: context.screenWidth/3.5,),
           detailCard(count: "00",title: "In your cart",width: context.screenWidth/3.5,),
         ],
       ),
45.heightBox,
ListView.separated(
  itemCount: profilebuttomList.length,
  separatorBuilder: (BuildContext context, int index) {
    return const Divider( color: darkFontGrey,) ;
  },
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      leading: Image.asset(profilebuttomicon[index],width: 20,).box.size(20,20).rounded.color(Colors.white).make(),
      title: profilebuttomList[index].text.fontFamily(bold).color(darkFontGrey).make(),
    ) ;
  },
).box.rounded.padding(EdgeInsets.symmetric(horizontal: 12)).white.shadow3xl.make().expand( )

          ],
        ),
      )),
    ));
  }
}
