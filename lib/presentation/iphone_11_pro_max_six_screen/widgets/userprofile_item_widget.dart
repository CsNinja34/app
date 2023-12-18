import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.v,
      width: 262.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 9.v),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 4.v,
                    ),
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Container(
                      height: 7.adaptSize,
                      width: 7.adaptSize,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          3.h,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 66.h),
                    child: Text(
                      "Card",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(11.h),
              alignment: Alignment.topLeft,
              child: CustomImageView(
                imagePath: ImageConstant.imgBiCreditCard2FrontFill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
