import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_leading_image.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_subtitle.dart';
import 'package:quickbitemk/widgets/app_bar/custom_app_bar.dart';

class Iphone11ProMaxEighteenScreen extends StatelessWidget {
  const Iphone11ProMaxEighteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 190.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRewind,
                      height: 91.adaptSize,
                      width: 91.adaptSize,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 48.h)),
                  SizedBox(height: 51.v),
                  Text("Item not found", style: theme.textTheme.headlineMedium),
                  SizedBox(height: 16.v),
                  Opacity(
                      opacity: 0.57,
                      child: SizedBox(
                          width: 218.h,
                          child: Text(
                              "Try searching the item with\na different keyword.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeBlack900))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 66.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 42.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Spicy chieckns", margin: EdgeInsets.only(left: 35.h)),
        actions: [
          Padding(
              padding: EdgeInsets.only(left: 3.h, right: 196.h),
              child: SizedBox(
                  height: 56.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.black900,
                      indent: 15.h,
                      endIndent: 15.h)))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
