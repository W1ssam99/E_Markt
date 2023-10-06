import 'package:e_app/consts/consts.dart';
import 'package:e_app/consts/lists.dart';
import 'package:e_app/views/category_screen/category_detail.dart';
import 'package:e_app/widget/bg_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category_screen extends StatefulWidget {
  const Category_screen({super.key});

  @override
  State<Category_screen> createState() => _Category_screenState();
}

class _Category_screenState extends State<Category_screen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        appBar: AppBar(
          title: categories.text.white.make(),
          elevation: 0,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 200,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                crossAxisCount: 3,
              ),
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Image.asset(
                      categoryimageList[index],
                      height: 120,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    10.heightBox,
                    categoryList[index]
                        .text
                        .color(darkFontGrey)
                        .align(TextAlign.center)
                        .make()
                  ],
                )
                    .box
                    .white
                    .clip(Clip.antiAlias)
                    .outerShadowSm
                    .rounded
                    .make()
                    .onTap(() {
                  Get.to(() => CategoryDetail(title: categoryList[index],));
                });
              },
            ),
          ),
        )
      ),
    );
  }
}
