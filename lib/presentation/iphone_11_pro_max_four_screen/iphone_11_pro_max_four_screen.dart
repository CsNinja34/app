import '../iphone_11_pro_max_four_screen/widgets/slider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_leading_image.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_trailing_image.dart';
import 'package:quickbitemk/widgets/app_bar/custom_app_bar.dart';
import 'package:quickbitemk/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFourScreen extends StatelessWidget {
  Iphone11ProMaxFourScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10002,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 53.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSlider(context),
                      SizedBox(height: 37.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 8.v,
                              child: AnimatedSmoothIndicator(
                                  activeIndex: sliderIndex,
                                  count: 1,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 12,
                                      activeDotColor: theme.colorScheme.primary,
                                      dotColor: appTheme.gray40001,
                                      dotHeight: 8.v,
                                      dotWidth: 8.h)))),
                      SizedBox(height: 46.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Veggie tomato mix",
                              style:
                                  CustomTextStyles.headlineMediumSFProRounded)),
                      SizedBox(height: 10.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("N1,900",
                              style: CustomTextStyles.titleLargePrimary)),
                      SizedBox(height: 34.v),
                      Text("Delivery info",
                          style: CustomTextStyles.titleMediumSFProRounded),
                      SizedBox(height: 6.v),
                      Opacity(
                          opacity: 0.5,
                          child: Container(
                              width: 261.h,
                              margin: EdgeInsets.only(right: 46.h),
                              child: Text(
                                  "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMedium_1
                                      .copyWith(height: 1.39)))),
                      SizedBox(height: 40.v),
                      Text("Return policy",
                          style: CustomTextStyles.titleMediumSFProRounded),
                      SizedBox(height: 2.v),
                      Opacity(
                          opacity: 0.5,
                          child: Container(
                              width: 294.h,
                              margin: EdgeInsets.only(right: 13.h),
                              child: Text(
                                  "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMedium_1
                                      .copyWith(height: 1.39)))),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildAddToCart(context)));
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
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHeartBlack900,
              margin: EdgeInsets.fromLTRB(54.h, 16.v, 54.h, 20.v))
        ]);
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 33.h),
        child: CarouselSlider.builder(
            options: CarouselOptions(
                height: 241.adaptSize,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  sliderIndex = index;
                }),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return SliderItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        text: "Add to cart",
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
