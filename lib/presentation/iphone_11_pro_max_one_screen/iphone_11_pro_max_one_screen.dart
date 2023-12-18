import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/custom_elevated_button.dart';

class Iphone11ProMaxOneScreen extends StatelessWidget {
  const Iphone11ProMaxOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.red500,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 36.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.v),
              Container(
                height: 73.adaptSize,
                width: 73.adaptSize,
                margin: EdgeInsets.only(left: 49.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 11.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder36,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup3,
                  height: 49.v,
                  width: 45.h,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 19.v),
              Container(
                width: 275.h,
                margin: EdgeInsets.only(left: 49.h),
                child: Text(
                  "Food for \nEveryone",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.displayLarge,
                ),
              ),
              SizedBox(height: 51.v),
              SizedBox(
                height: 513.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgToyfacesTansparentBg29,
                      height: 328.v,
                      width: 217.h,
                      alignment: Alignment.centerRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle5,
                      height: 180.v,
                      width: 221.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 29.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgToyfacesTansparentBg49,
                      height: 453.v,
                      width: 299.h,
                      alignment: Alignment.topLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle3,
                      height: 195.v,
                      width: 319.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 35.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle4,
                      height: 64.v,
                      width: 244.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 11.v),
                    ),
                    CustomElevatedButton(
                      width: 314.h,
                      text: "Get starteed",
                      buttonStyle: CustomButtonStyles.fillOnPrimary,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumDeeporangeA40001,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
