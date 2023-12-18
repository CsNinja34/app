import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';

class Iphone11ProMaxFiveScreen extends StatelessWidget {
  const Iphone11ProMaxFiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray20002,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 69.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        Padding(
                            padding: EdgeInsets.only(left: 42.h, right: 196.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  onTap: () {
                                    onTapImgArrowLeft(context);
                                  }),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Text("Spicy chieckns",
                                      style: CustomTextStyles
                                          .titleMediumSFProRounded)),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: SizedBox(
                                      height: 26.v,
                                      child: VerticalDivider(
                                          width: 1.h,
                                          thickness: 1.v,
                                          color: appTheme.black900)))
                            ])),
                        SizedBox(height: 34.v),
                        SizedBox(
                            height: 978.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 33.h, vertical: 34.v),
                                          decoration: AppDecoration.fillGray50
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder30),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text("Found  6 results",
                                                    style: CustomTextStyles
                                                        .headlineMediumSFProRoundedBold),
                                                SizedBox(height: 44.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          17.h,
                                                                      bottom:
                                                                          61.v),
                                                              child: _buildEggAndCucmber(
                                                                  context,
                                                                  eggAndCucumber:
                                                                      "Veggie tomato mix",
                                                                  nLabel:
                                                                      "N1,900",
                                                                  moiMoiAndEkpa:
                                                                      "Fried chicken m.",
                                                                  nLabel1:
                                                                      "N1,900")),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          17.h,
                                                                      top:
                                                                          54.v),
                                                              child: _buildEggAndCucmber(
                                                                  context,
                                                                  eggAndCucumber:
                                                                      "Egg and cucmber...",
                                                                  nLabel:
                                                                      "N1,900",
                                                                  moiMoiAndEkpa:
                                                                      "Moi-moi and ekpa.",
                                                                  nLabel1:
                                                                      "N1,900"))
                                                        ])),
                                                SizedBox(height: 81.v)
                                              ]))),
                                  Padding(
                                      padding: EdgeInsets.only(right: 33.h),
                                      child: _buildSix(context,
                                          dynamicText: "Egg and cucmber...",
                                          dynamicText1: "N1,900")),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 34.h, bottom: 61.v),
                                      child: _buildSix(context,
                                          dynamicText: "Veggie tomato mix",
                                          dynamicText1: "N1,900"))
                                ]))
                      ])))
                ]))));
  }

  /// Common widget
  Widget _buildSix(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return SizedBox(
        height: 252.v,
        width: 156.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 23.v),
                  decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 81.v),
                        SizedBox(
                            width: 105.h,
                            child: Text(dynamicText,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleLarge!.copyWith(
                                    color: appTheme.black900, height: 1.01))),
                        SizedBox(height: 13.v),
                        Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Text(dynamicText1,
                                style: CustomTextStyles
                                    .titleMediumSFProRoundedPrimary
                                    .copyWith(
                                        color: theme.colorScheme.primary)))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgImage21,
              height: 128.adaptSize,
              width: 128.adaptSize,
              radius: BorderRadius.circular(64.h),
              alignment: Alignment.topCenter)
        ]));
  }

  /// Common widget
  Widget _buildEggAndCucmber(
    BuildContext context, {
    required String eggAndCucumber,
    required String nLabel,
    required String moiMoiAndEkpa,
    required String nLabel1,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(
                  height: 252.v,
                  width: 156.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 23.v),
                            decoration: AppDecoration.outlineOnPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder30),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 81.v),
                                  SizedBox(
                                      width: 103.h,
                                      child: Text(eggAndCucumber,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.titleLarge!
                                              .copyWith(
                                                  color: appTheme.black900,
                                                  height: 1.01))),
                                  SizedBox(height: 13.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 26.h),
                                      child: Text(nLabel,
                                          style: CustomTextStyles
                                              .titleMediumSFProRoundedPrimary
                                              .copyWith(
                                                  color: theme
                                                      .colorScheme.primary)))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage22,
                        height: 128.adaptSize,
                        width: 128.adaptSize,
                        radius: BorderRadius.circular(64.h),
                        alignment: Alignment.topCenter)
                  ])),
              SizedBox(height: 23.v),
              SizedBox(
                  height: 252.v,
                  width: 156.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: EdgeInsets.all(23.h),
                            decoration: AppDecoration.outlineOnPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder30),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 81.v),
                                  SizedBox(
                                      width: 95.h,
                                      child: Text(moiMoiAndEkpa,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.titleLarge!
                                              .copyWith(
                                                  color: appTheme.black900,
                                                  height: 1.01))),
                                  SizedBox(height: 9.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 21.h),
                                      child: Text(nLabel1,
                                          style: CustomTextStyles
                                              .titleMediumSFProRoundedPrimary
                                              .copyWith(
                                                  color: theme
                                                      .colorScheme.primary)))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage23,
                        height: 128.adaptSize,
                        width: 128.adaptSize,
                        radius: BorderRadius.circular(64.h),
                        alignment: Alignment.topCenter)
                  ]))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
