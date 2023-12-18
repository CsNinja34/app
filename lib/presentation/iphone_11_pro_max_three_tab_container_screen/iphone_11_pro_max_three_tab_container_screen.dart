import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_three_page/iphone_11_pro_max_three_page.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_leading_image.dart';
import 'package:quickbitemk/widgets/app_bar/appbar_trailing_image.dart';
import 'package:quickbitemk/widgets/app_bar/custom_app_bar.dart';
import 'package:quickbitemk/widgets/custom_search_view.dart';

class Iphone11ProMaxThreeTabContainerScreen extends StatefulWidget {
  const Iphone11ProMaxThreeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone11ProMaxThreeTabContainerScreenState createState() =>
      Iphone11ProMaxThreeTabContainerScreenState();
}

class Iphone11ProMaxThreeTabContainerScreenState
    extends State<Iphone11ProMaxThreeTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10004,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 26.v),
              Container(
                width: 185.h,
                margin: EdgeInsets.only(left: 50.h),
                child: Text(
                  "Delicious \nfood for you",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.displaySmallSFProRounded,
                ),
              ),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search",
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 45.v),
              _buildTabview(context),
              SizedBox(
                height: 515.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    Iphone11ProMaxThreePage(),
                    Iphone11ProMaxThreePage(),
                    Iphone11ProMaxThreePage(),
                    Iphone11ProMaxThreePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 76.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(
          left: 54.h,
          top: 25.v,
          bottom: 17.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgShoppingCart,
          margin: EdgeInsets.symmetric(
            horizontal: 41.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 33.v,
      width: 346.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 17.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 17.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "Foods",
            ),
          ),
          Tab(
            child: Text(
              "Drinks",
            ),
          ),
          Tab(
            child: Text(
              "Snacks",
            ),
          ),
          Tab(
            child: Text(
              "Sauce",
            ),
          ),
        ],
      ),
    );
  }
}
