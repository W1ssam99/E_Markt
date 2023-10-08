import 'package:e_app/consts/colors.dart';
import 'package:e_app/consts/consts.dart';
import 'package:e_app/consts/lists.dart';
import 'package:e_app/widget/our_botton.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: darkFontGrey),
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: darkFontGrey,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline, color: darkFontGrey)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      itemCount: 3,
                      aspectRatio: 16 / 9,
                      itemBuilder: (contex, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      }),
                  10.heightBox,
                  title!.text
                      .size(16)
                      .color(darkFontGrey)
                      .fontFamily(bold)
                      .make(),
                  10.heightBox,
                  SingleChildScrollView(
                    child: VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      maxRating: 5,
                      size: 25,
                      count: 5,
                      stepInt: true,
                    ),
                  ),
                  10.heightBox,
                  "\$30".text.color(redColor).fontFamily(bold).size(18).make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Seller".text.white.fontFamily(semibold).make(),
                          5.heightBox,
                          "In House Brand"
                              .text
                              .white
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                        ],
                      )
                              .box
                              .height(70)
                              .padding(EdgeInsets.symmetric(horizontal: 16))
                              .color(textfieldGrey)
                              .make()),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      )
                    ],
                  ).box.height(70).color(textfieldGrey).make(),
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Quanty".text.color(textfieldGrey).make(),
                          ),
                          Row(
                              children: List.generate(
                                  3,
                                  (index) => VxBox()
                                      .size(40, 40)
                                      .color(Vx.randomPrimaryColor)
                                      .roundedFull
                                      .margin(
                                          EdgeInsets.symmetric(horizontal: 4))
                                      .make()))
                        ],
                      ).box.white.padding(EdgeInsets.all(13)).shadowSm.make(),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.remove)),
                              "0".text.size(16).color(darkFontGrey).make(),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                              "(0 availabl)".text.color(textfieldGrey).make()
                            ],
                          )
                        ],
                      ).box.white.padding(EdgeInsets.all(13)).shadowSm.make(),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              "0.00"
                                  .text
                                  .color(redColor)
                                  .size(16)
                                  .fontFamily(bold)
                                  .make()
                            ],
                          )
                        ],
                      ).box.white.padding(EdgeInsets.all(13)).shadowSm.make(),
                    ],
                  ).box.white.shadowSm.make(),
                  10.heightBox,
                  "Description"
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,
                  "This is adummy des"
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                      ListView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: List.generate(
                          itemdetailbuttom.length, (index) => ListTile(
                          title: itemdetailbuttom[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                          trailing: Icon(Icons.forward, color: darkFontGrey,)),
                        )),
                        20.heightBox,
                       Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: productsSummylike.text.color(darkFontGrey)
                              .fontFamily(bold)
                              .size(18)
                              .make(),
                        ),
                        5.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                6,
                                (index) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            imgP1,
                                            width: 150,
                                            fit: BoxFit.fill,
                                          ),
                                          10.heightBox,
                                          "labtop"
                                              .text
                                              .fontFamily(semibold)
                                              .color(darkFontGrey)
                                              .make(),
                                          10.heightBox,
                                          "\$600"
                                              .text
                                              .fontFamily(bold)
                                              .color(redColor)
                                              .make(),
                                        ],
                                      )
                                          .box
                                          .roundedSM
                                          .white
                                          .rounded
                                          .padding(EdgeInsets.all(8))
                                          .make(),
                                    )),
                          ),
                        ),
                        10.heightBox,
                      ],
                    ),
                ],
              ),
            ),
          )),
          SizedBox(
              width: double.infinity,
              height: 60,
              child: ourButon(
                  color: redColor,
                  onPress: () {},
                  textColor: whiteColor,
                  title: "Add to Cart")),
        ],
      ),
    );
  }
}
