import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage2241x241,
        height: 241.adaptSize,
        width: 241.adaptSize,
        radius: BorderRadius.circular(
          120.h,
        ),
      ),
    );
  }
}
