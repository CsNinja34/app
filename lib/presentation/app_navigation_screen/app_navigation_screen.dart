import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "iPhone 11 Pro Max - Three - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone11ProMaxThreeTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxFifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Sixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxSixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxEighteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Twenty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxTwentyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentyOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxTwentyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Nine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxNineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxTenScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
