import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFourteenDialog extends StatelessWidget {
  const Iphone11ProMaxFourteenDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 315.h,
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 315.h,
            padding: EdgeInsets.symmetric(
              horizontal: 46.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.fillGray20001.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Text(
                  "Please note",
                  style: CustomTextStyles.titleLargePoppins,
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(left: 46.h),
              child: Text(
                "Delivery to Mainland".toUpperCase(),
                style: CustomTextStyles.bodyMediumPoppins,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.h),
            child: Text(
              " N1000 - N2000",
              style: CustomTextStyles.bodyLargePoppins,
            ),
          ),
          SizedBox(height: 17.v),
          Opacity(
            opacity: 0.5,
            child: Align(
              alignment: Alignment.center,
              child: Divider(
                color: appTheme.black900.withOpacity(0.53),
                indent: 45.h,
                endIndent: 30.h,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(left: 46.h),
              child: Text(
                "Delivery to island".toUpperCase(),
                style: CustomTextStyles.bodyMediumPoppins,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 46.h),
            child: Text(
              "N2000 - N3000",
              style: CustomTextStyles.bodyLargePoppins,
            ),
          ),
          SizedBox(height: 34.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 46.h,
                right: 18.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 16.v,
                        bottom: 17.v,
                      ),
                      child: Text(
                        "Cancel",
                        style: CustomTextStyles.titleMediumPoppinsBlack900,
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    height: 60.v,
                    width: 159.h,
                    text: "Proceed",
                    margin: EdgeInsets.only(left: 30.h),
                    buttonTextStyle:
                        CustomTextStyles.titleMediumPoppinsOnPrimary,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}
