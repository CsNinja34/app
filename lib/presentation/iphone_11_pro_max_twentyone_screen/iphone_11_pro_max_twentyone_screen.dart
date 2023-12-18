import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_leading_image.dart';
import 'package:quickbitemk/widgets/app_bar/custom_app_bar.dart';

class Iphone11ProMaxTwentyoneScreen extends StatelessWidget {
  const Iphone11ProMaxTwentyoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 47.h, vertical: 26.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("My offers",
                              style: CustomTextStyles.displaySmallPoppins))),
                  Spacer(flex: 53),
                  Text("ohh snap!  No offers yet",
                      style: CustomTextStyles.headlineMediumPoppins),
                  SizedBox(height: 5.v),
                  Opacity(
                      opacity: 0.57,
                      child: Container(
                          width: 233.h,
                          margin: EdgeInsets.only(left: 44.h, right: 43.h),
                          child: Text(
                              "Bella dose’t have any offers\nyet please check again.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  CustomTextStyles.bodyLargePoppinsBlack900))),
                  Spacer(flex: 46)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlack900,
            margin: EdgeInsets.fromLTRB(50.h, 22.v, 358.h, 22.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Navigates back to the previous screen.
  onTapVector(BuildContext context) {
    Navigator.pop(context);
  }
}
