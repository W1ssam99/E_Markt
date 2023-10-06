import 'package:e_app/consts/consts.dart';
import 'package:e_app/consts/lists.dart';
import 'package:e_app/views/homeScreen/componets/featued_button.dart';
import 'package:e_app/widget/home_bottons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreebState();
}

class _HomeScreebState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: const Padding(
              padding: EdgeInsets.only(left: 7, right: 7),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: serchingAnyThinf,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
          ),
          10.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          height: 150,
                          enlargeCenterPage: true,
                          itemCount: Sliderslist.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Image.asset(
                                Sliderslist[index],
                                fit: BoxFit.cover,
                              ),
                            );
                          })
                      .box
                      .rounded
                      .clip(Clip.antiAlias)
                      .margin(EdgeInsets.symmetric(horizontal: 8))
                      .make(),
                  10.heightBox,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: homeButton(
                                  height: context.screenHeight * 0.2,
                                  width: context.screenWidth / 2.5,
                                  icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                  title: index == 0 ? tody : flashseal)))),
                  VxSwiper.builder(
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          height: 150,
                          enlargeCenterPage: true,
                          itemCount: secondSliderslist.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Image.asset(
                                secondSliderslist[index],
                                fit: BoxFit.cover,
                              ),
                            );
                          })
                      .box
                      .rounded
                      .clip(Clip.antiAlias)
                      .margin(EdgeInsets.symmetric(horizontal: 8))
                      .make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: homeButton(
                                  height: context.screenHeight * 0.15,
                                  width: context.screenWidth / 3.55,
                                  icon: index == 0
                                      ? icTopCategories
                                      : index == 1
                                          ? icBrands
                                          : icTopSeller,
                                  title: index == 0
                                      ? topcategory
                                      : index == 1
                                          ? topBrand
                                          : "Top Seler"),
                            )),
                  ),
                  20.heightBox,
                  Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCategory.text
                            .color(darkFontGrey)
                            .size(18)
                            .fontFamily(semibold)
                            .make()),
                  ),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    featuredbutton(
                                      icon: featuredList1[index],
                                      title: featuredTitle1[index],
                                    ),
                                    10.heightBox,
                                    featuredbutton(
                                      icon: featuredList2[index],
                                      title: featuredTitle2[index],
                                    ),
                                  ],
                                )).toList()),
                  ),
                  20.heightBox,
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: redColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: featuredProducr.text.white
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
                  ),
                  20.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: secondSliderslist.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Image.asset(
                            secondSliderslist[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      }),
                  20.heightBox,
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      mainAxisExtent: 300,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP1,
                            height: 200,
                            width: 250,
                            fit: BoxFit.fill,
                          ),
                          const Spacer(),
                          "labtop"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$600".text.fontFamily(bold).color(redColor).make(),
                        ],
                      )
                          .box
                          .roundedSM
                          .white
                          .rounded
                          .padding(EdgeInsets.all(12))
                          .make();
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
