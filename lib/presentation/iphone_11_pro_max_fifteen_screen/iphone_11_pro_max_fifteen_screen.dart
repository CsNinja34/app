import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_leading_image.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_title.dart';
import 'package:quickbitemk/widgets/app_bar/custom_app_bar.dart';
import 'package:quickbitemk/widgets/custom_elevated_button.dart';

class Iphone11ProMaxFifteenScreen extends StatelessWidget {
  const Iphone11ProMaxFifteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 172.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorGray40002,
                      height: 118.v,
                      width: 106.h),
                  SizedBox(height: 27.v),
                  Text("No history yet", style: theme.textTheme.headlineMedium),
                  SizedBox(height: 14.v),
                  Opacity(
                      opacity: 0.57,
                      child: SizedBox(
                          width: 220.h,
                          child: Text(
                              "Hit the orange button down\nbelow to Create an order",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeBlack900))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildStartOrdering(context)));
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
        title: AppbarTitle(text: "History"));
  }

  /// Section Widget
  Widget _buildStartOrdering(BuildContext context) {
    return CustomElevatedButton(
        text: "Start odering",
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
