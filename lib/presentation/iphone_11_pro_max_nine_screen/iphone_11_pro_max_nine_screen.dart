import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_leading_image.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_title.dart';
import 'package:quickbitemk/widgets/app_bar/custom_app_bar.dart';
import 'package:quickbitemk/widgets/custom_elevated_button.dart';
import 'package:quickbitemk/widgets/custom_icon_button.dart';
import 'package:quickbitemk/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxNineScreen extends StatelessWidget {
  Iphone11ProMaxNineScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  String radioGroup1 = "";

  String deliveryMethod = "";

  List<String> radioList = ["lbl_door_delivery", "lbl_pick_up"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 27.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Payment",
                              style: theme.textTheme.displaySmall))),
                  SizedBox(height: 45.v),
                  _buildPaymentColumn(context),
                  SizedBox(height: 19.v),
                  _buildDeliveryColumn(context),
                  SizedBox(height: 39.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 2.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 5.v),
                                child: Text("Total",
                                    style: theme.textTheme.bodyLarge)),
                            Text("23,000",
                                style: CustomTextStyles.titleLargeSFProText)
                          ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildProceedToPaymentButton(context)));
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
        title: AppbarTitle(text: "Checkout"));
  }

  /// Section Widget
  Widget _buildPaymentColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text("Payment method",
                  style: CustomTextStyles.titleMedium17)),
          SizedBox(height: 18.v),
          Container(
              width: 315.h,
              margin: EdgeInsets.only(right: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 40.v,
                        width: 118.h,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: CustomRadioButton(
                                  text: "Card",
                                  value: "Card",
                                  groupValue: radioGroup,
                                  onChange: (value) {
                                    radioGroup = value;
                                  })),
                          Padding(
                              padding: EdgeInsets.only(left: 30.h),
                              child: CustomIconButton(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.all(11.h),
                                  alignment: Alignment.centerLeft,
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgBiCreditCard2FrontFill)))
                        ])),
                    SizedBox(height: 15.v),
                    Opacity(
                        opacity: 0.3,
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Divider(
                                color: appTheme.black900.withOpacity(0.46),
                                indent: 30.h,
                                endIndent: 11.h))),
                    SizedBox(height: 14.v),
                    SizedBox(
                        height: 40.v,
                        width: 190.h,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: CustomRadioButton(
                                  text: "Bank account",
                                  value: "Bank account",
                                  groupValue: radioGroup1,
                                  onChange: (value) {
                                    radioGroup1 = value;
                                  })),
                          Padding(
                              padding: EdgeInsets.only(left: 30.h),
                              child: CustomIconButton(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.all(9.h),
                                  decoration: IconButtonStyleHelper.fillPink,
                                  alignment: Alignment.centerLeft,
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgDashiconsBank)))
                        ])),
                    SizedBox(height: 55.v)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDeliveryColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text("Delivery method.",
                  style: CustomTextStyles.titleMedium17)),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Column(children: [
                Padding(
                    padding:
                        EdgeInsets.only(left: 21.h, top: 30.v, right: 32.h),
                    child: CustomRadioButton(
                        text: "Door delivery",
                        value: radioList[0],
                        groupValue: deliveryMethod,
                        padding: EdgeInsets.only(left: 16.h, right: 30.h),
                        onChange: (value) {
                          deliveryMethod = value;
                        })),
                Padding(
                    padding: EdgeInsets.fromLTRB(21.h, 25.v, 204.h, 34.v),
                    child: CustomRadioButton(
                        text: "Pick up",
                        value: radioList[1],
                        groupValue: deliveryMethod,
                        onChange: (value) {
                          deliveryMethod = value;
                        }))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildProceedToPaymentButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Proceed to payment",
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
