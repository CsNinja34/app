import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_leading_image.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_title.dart';
import 'package:quickbitemk/widgets/app_bar/custom_app_bar.dart';
import 'package:quickbitemk/widgets/custom_elevated_button.dart';
import 'package:quickbitemk/widgets/custom_radio_button.dart';
import 'package:quickbitemk/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxEightScreen extends StatelessWidget {
  Iphone11ProMaxEightScreen({Key? key}) : super(key: key);

  TextEditingController marvisKparobovalueController = TextEditingController();

  String deliveryMethod = "";

  List<String> radioList = ["lbl_door_delivery", "lbl_pick_up"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 26.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Delivery",
                              style: theme.textTheme.displaySmall))),
                  SizedBox(height: 41.v),
                  _buildDeliveryDetails(context),
                  SizedBox(height: 42.v),
                  _buildDeliveryMethod(context),
                  SizedBox(height: 68.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 3.h),
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
            bottomNavigationBar: _buildProceedToPayment(context)));
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
  Widget _buildDeliveryDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h, right: 11.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Address details",
                        style: CustomTextStyles.titleMedium17),
                    Text("change", style: CustomTextStyles.bodyMediumOrange700)
                  ])),
          SizedBox(height: 19.v),
          Container(
              width: 315.h,
              margin: EdgeInsets.only(right: 3.h),
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 25.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: 23.h),
                        child: CustomTextFormField(
                            controller: marvisKparobovalueController,
                            hintText: "Marvis Kparobo",
                            hintStyle: CustomTextStyles.titleMediumMedium,
                            textInputAction: TextInputAction.done,
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineBlack1)),
                    SizedBox(height: 6.v),
                    Container(
                        width: 223.h,
                        margin: EdgeInsets.only(right: 32.h),
                        child: Text(
                            "Km 5 refinery road oppsite re\npublic road, effurun, delta state",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBlack900)),
                    SizedBox(height: 5.v),
                    Opacity(
                        opacity: 0.3,
                        child: Divider(
                            color: appTheme.black900.withOpacity(0.46),
                            endIndent: 23.h)),
                    SizedBox(height: 7.v),
                    Text("+234 9011039271",
                        style: CustomTextStyles.bodyMediumBlack900)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDeliveryMethod(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text("Delivery method.",
                  style: CustomTextStyles.titleMedium17)),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(left: 3.h),
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
  Widget _buildProceedToPayment(BuildContext context) {
    return CustomElevatedButton(
        text: "Proceed to payment",
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
