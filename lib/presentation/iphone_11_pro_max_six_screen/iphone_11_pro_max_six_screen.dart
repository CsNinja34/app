import '../iphone_11_pro_max_six_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_leading_image.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_title.dart';
import 'package:quickbitemk/widgets/app_bar/custom_app_bar.dart';
import 'package:quickbitemk/widgets/custom_elevated_button.dart';

class Iphone11ProMaxSixScreen extends StatelessWidget {
  const Iphone11ProMaxSixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 49.h, vertical: 37.v),
                child: Column(children: [
                  _buildInformation(context),
                  SizedBox(height: 48.v),
                  _buildPaymentMethod(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildUpdateButton(context)));
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
        title: AppbarTitle(text: "My profile"));
  }

  /// Section Widget
  Widget _buildInformation(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child:
                  Text("Information", style: CustomTextStyles.titleMedium17)),
          SizedBox(height: 11.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle6,
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    radius: BorderRadius.circular(10.h),
                    margin: EdgeInsets.only(bottom: 33.v)),
                Padding(
                    padding: EdgeInsets.only(left: 15.h, bottom: 5.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Marvis Ighedosa",
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 8.v),
                          Opacity(
                              opacity: 0.5,
                              child: Text("dosamarvis@gmail.com",
                                  style: CustomTextStyles.bodyMedium13)),
                          SizedBox(height: 7.v),
                          Opacity(
                              opacity: 0.5,
                              child: SizedBox(
                                  width: 187.h,
                                  child: Text(
                                      "No 15 uti street off ovie palace road effurun delta state",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.bodyMedium13)))
                        ]))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text("Payment Method",
                  style: CustomTextStyles.titleMedium17)),
          SizedBox(height: 19.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Opacity(
                        opacity: 0.3,
                        child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 7.0.v),
                            child: SizedBox(
                                width: 232.h,
                                child: Divider(
                                    height: 1.v,
                                    thickness: 1.v,
                                    color:
                                        appTheme.black900.withOpacity(0.46)))));
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return UserprofileItemWidget();
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildUpdateButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Updatet",
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
