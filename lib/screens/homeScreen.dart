import 'package:ecommerceapp/const/consts.dart';
import 'package:ecommerceapp/const/list.dart';
import 'package:ecommerceapp/widgets/homebutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
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
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: search,
                  hintStyle: TextStyle(color: textfieldGrey)
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16/ 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: SliderList.length, itemBuilder: (context,index){
                      return Image.asset(SliderList[index],
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                    }
                    ),

                    10.heightBox,
                    //deals button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(2, (index) => homeButton(
                        height: context.screenHeight * 0.12,
                        width: context.screenWidth /2.5,
                        icon: index == 0 ? icTodaysDeal : icFlashDeal,
                        title: index == 0 ? todaydeal : flashsale,
                      )),
                    ),

                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16/ 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: secondSliderList.length, itemBuilder: (context,index){
                      return Image.asset(secondSliderList[index],
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                    }),

                    //category builder
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(3, (index) => homeButton(
                        height: context.screenHeight *0.12,
                        width: context.screenWidth /3.5,
                        icon: index == 0 ? icTopCategories : index == 1
                            ? icBrands : icTopSeller,
                        title: index == 0 ? topcategory : index == 1
                            ? brand : topseller,
                      )),
                    ),

                    //feature category
                    10.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featurecat.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featurecat.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featurecat.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featurecat.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featurecat.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
