import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_leading_image.dart';
import 'package:quickbitemk/widgets/app_bar/custom_app_bar.dart';
import 'package:quickbitemk/widgets/custom_elevated_button.dart';
import 'package:quickbitemk/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxThirteenScreen extends StatelessWidget {
  Iphone11ProMaxThirteenScreen({Key? key}) : super(key: key);

  TextEditingController mobileNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 30.v),
                child: Column(children: [
                  SizedBox(height: 26.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 42.h, right: 57.h, bottom: 5.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("My profile",
                                            style:
                                                theme.textTheme.displaySmall))),
                                SizedBox(height: 40.v),
                                _buildUserProfile(context),
                                SizedBox(height: 27.v),
                                _buildPendingReviews(context, text: "Orders"),
                                SizedBox(height: 27.v),
                                _buildPendingReviews(context,
                                    text: "Pending reviews"),
                                SizedBox(height: 27.v),
                                _buildPendingReviews(context, text: "Faq"),
                                SizedBox(height: 27.v),
                                _buildPendingReviews(context, text: "Help")
                              ]))))
                ])),
            bottomNavigationBar: _buildUpdate(context)));
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

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Personal details", style: theme.textTheme.titleMedium),
        Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text("change", style: CustomTextStyles.bodyMediumPrimary))
      ]),
      SizedBox(height: 10.v),
      Container(
          padding: EdgeInsets.symmetric(vertical: 18.v),
          decoration: AppDecoration.outlineBlack900
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle6,
                    height: 100.v,
                    width: 91.h,
                    radius: BorderRadius.circular(10.h),
                    margin: EdgeInsets.only(bottom: 61.v)),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Marvis Ighedosa",
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 5.v),
                          Opacity(
                              opacity: 0.5,
                              child: Text("Dosamarvis@gmail.com",
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 6.v),
                          Opacity(
                              opacity: 0.5,
                              child: SizedBox(
                                  width: 165.h,
                                  child: Divider(
                                      color: appTheme.black900
                                          .withOpacity(0.53)))),
                          SizedBox(height: 6.v),
                          CustomTextFormField(
                              width: 165.h,
                              controller: mobileNoController,
                              hintText: "+234 9011039271",
                              hintStyle: theme.textTheme.bodyMedium!,
                              textInputAction: TextInputAction.done,
                              borderDecoration:
                                  TextFormFieldStyleHelper.underLineBlack2),
                          SizedBox(height: 5.v),
                          Opacity(
                              opacity: 0.5,
                              child: SizedBox(
                                  width: 177.h,
                                  child: Text(
                                      "No 15 uti street off ovie palace road effurun delta state",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyMedium)))
                        ]))
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
        text: "Update",
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 30.v));
  }

  /// Common widget
  Widget _buildPendingReviews(
    BuildContext context, {
    required String text,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 17.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(text,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: appTheme.black900))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 2.v, right: 4.h))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapVector(BuildContext context) {
    Navigator.pop(context);
  }
}
