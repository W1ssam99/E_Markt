import 'package:e_app/consts/consts.dart';
import 'package:e_app/views/category_screen/item_detail.dart';
import 'package:e_app/widget/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryDetail extends StatelessWidget {
  final String? title;
  const CategoryDetail({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => "baby Clothes"
                          .text
                          .size(12)
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .makeCentered()
                          .box
                          .size(120, 60)
                          .rounded
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .white
                          .make()),
                ),
              ),
              20.heightBox,
              Expanded(
                  child: Container(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                        .outerShadowSm
                        .white
                        .rounded
                        .padding(EdgeInsets.all(12))
                        .make()
                        .onTap(() {
                      Get.to(() => ItemDetails(title: "title",));
                    });
                  },
                ),
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
