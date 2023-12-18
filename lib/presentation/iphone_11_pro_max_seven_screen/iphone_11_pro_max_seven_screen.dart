import '../iphone_11_pro_max_seven_screen/widgets/productcard1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_leading_image.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_title.dart';
import 'package:quickbitemk/widgets/app_bar/custom_app_bar.dart';
import 'package:quickbitemk/widgets/custom_elevated_button.dart';

class Iphone11ProMaxSevenScreen extends StatelessWidget {
  const Iphone11ProMaxSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 39.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgIwwaSwipe,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 5.h, top: 5.v, bottom: 2.v),
                                    child: Text("swipe on an item to delete",
                                        style: theme.textTheme.bodySmall))
                              ])),
                      SizedBox(height: 19.v),
                      _buildVeggieTomatoMix(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildCompleteOrder(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 41.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Cart"));
  }

  /// Section Widget
  Widget _buildVeggieTomatoMix(BuildContext context) {
    return SizedBox(
        height: 337.v,
        width: 365.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 235.v, right: 131.h),
                  padding: EdgeInsets.symmetric(vertical: 16.v),
                  decoration: AppDecoration.outlineBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage269x5,
                        height: 69.v,
                        width: 5.h,
                        radius: BorderRadius.circular(34.h)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 15.h, top: 12.v, bottom: 9.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Veggie tomato mix",
                                  style:
                                      CustomTextStyles.titleMediumSFProRounded),
                              SizedBox(height: 9.v),
                              Text("#1,900", style: theme.textTheme.titleSmall)
                            ]))
                  ]))),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 50.h, bottom: 20.v),
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 1.v);
                      },
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Productcard1ItemWidget();
                      })))
        ]));
  }

  /// Section Widget
  Widget _buildCompleteOrder(BuildContext context) {
    return CustomElevatedButton(
        text: "Complete order",
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
