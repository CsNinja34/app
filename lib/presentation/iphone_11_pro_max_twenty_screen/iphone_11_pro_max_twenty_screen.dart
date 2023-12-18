import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/custom_elevated_button.dart';

class Iphone11ProMaxTwentyScreen extends StatelessWidget {
  const Iphone11ProMaxTwentyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 47.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 7.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroupGray40002,
                height: 120.v,
                width: 133.h,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 84.h),
              ),
              SizedBox(height: 25.v),
              Text(
                "No internet Connection",
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 16.v),
              Opacity(
                opacity: 0.57,
                child: Container(
                  width: 312.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Text(
                    "Your internet connection is currently\nnot available please check or try again.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 51.v),
              CustomElevatedButton(
                text: "Try again",
                margin: EdgeInsets.symmetric(horizontal: 3.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
