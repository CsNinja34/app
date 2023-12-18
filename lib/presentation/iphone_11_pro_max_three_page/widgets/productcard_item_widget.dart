import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  const ProductcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 321.v,
      width: 220.h,
      margin: EdgeInsets.only(top: 17.v),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 52.h,
                vertical: 36.v,
              ),
              decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 106.v),
                  Opacity(
                    opacity: 0.9,
                    child: SizedBox(
                      width: 110.h,
                      child: Text(
                        "Veggie tomato mix",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900.copyWith(
                          height: 1.01,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "N1,900",
                      style: CustomTextStyles.titleMediumSFProRoundedPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 164.adaptSize,
            width: 164.adaptSize,
            radius: BorderRadius.circular(
              82.h,
            ),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
