import 'package:flutter/material.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_one_screen/iphone_11_pro_max_one_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_two_screen/iphone_11_pro_max_two_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_three_tab_container_screen/iphone_11_pro_max_three_tab_container_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_fifteen_screen/iphone_11_pro_max_fifteen_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_sixteen_screen/iphone_11_pro_max_sixteen_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_five_screen/iphone_11_pro_max_five_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_six_screen/iphone_11_pro_max_six_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_four_screen/iphone_11_pro_max_four_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_eighteen_screen/iphone_11_pro_max_eighteen_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_twenty_screen/iphone_11_pro_max_twenty_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_eight_screen/iphone_11_pro_max_eight_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_seven_screen/iphone_11_pro_max_seven_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_twentyone_screen/iphone_11_pro_max_twentyone_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_nine_screen/iphone_11_pro_max_nine_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_thirteen_screen/iphone_11_pro_max_thirteen_screen.dart';
import 'package:quickbitemk/presentation/iphone_11_pro_max_ten_screen/iphone_11_pro_max_ten_screen.dart';
import 'package:quickbitemk/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone11ProMaxOneScreen = '/iphone_11_pro_max_one_screen';

  static const String iphone11ProMaxTwoScreen = '/iphone_11_pro_max_two_screen';

  static const String iphone11ProMaxThreePage = '/iphone_11_pro_max_three_page';

  static const String iphone11ProMaxThreeTabContainerScreen =
      '/iphone_11_pro_max_three_tab_container_screen';

  static const String iphone11ProMaxFifteenScreen =
      '/iphone_11_pro_max_fifteen_screen';

  static const String iphone11ProMaxSixteenScreen =
      '/iphone_11_pro_max_sixteen_screen';

  static const String iphone11ProMaxFiveScreen =
      '/iphone_11_pro_max_five_screen';

  static const String iphone11ProMaxSixScreen = '/iphone_11_pro_max_six_screen';

  static const String iphone11ProMaxFourScreen =
      '/iphone_11_pro_max_four_screen';

  static const String iphone11ProMaxEighteenScreen =
      '/iphone_11_pro_max_eighteen_screen';

  static const String iphone11ProMaxTwentyScreen =
      '/iphone_11_pro_max_twenty_screen';

  static const String iphone11ProMaxEightScreen =
      '/iphone_11_pro_max_eight_screen';

  static const String iphone11ProMaxSevenScreen =
      '/iphone_11_pro_max_seven_screen';

  static const String iphone11ProMaxTwentyoneScreen =
      '/iphone_11_pro_max_twentyone_screen';

  static const String iphone11ProMaxNineScreen =
      '/iphone_11_pro_max_nine_screen';

  static const String iphone11ProMaxThirteenScreen =
      '/iphone_11_pro_max_thirteen_screen';

  static const String iphone11ProMaxTenScreen = '/iphone_11_pro_max_ten_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone11ProMaxOneScreen: (context) => Iphone11ProMaxOneScreen(),
    iphone11ProMaxTwoScreen: (context) => Iphone11ProMaxTwoScreen(),
    iphone11ProMaxThreeTabContainerScreen: (context) =>
        Iphone11ProMaxThreeTabContainerScreen(),
    iphone11ProMaxFifteenScreen: (context) => Iphone11ProMaxFifteenScreen(),
    iphone11ProMaxSixteenScreen: (context) => Iphone11ProMaxSixteenScreen(),
    iphone11ProMaxFiveScreen: (context) => Iphone11ProMaxFiveScreen(),
    iphone11ProMaxSixScreen: (context) => Iphone11ProMaxSixScreen(),
    iphone11ProMaxFourScreen: (context) => Iphone11ProMaxFourScreen(),
    iphone11ProMaxEighteenScreen: (context) => Iphone11ProMaxEighteenScreen(),
    iphone11ProMaxTwentyScreen: (context) => Iphone11ProMaxTwentyScreen(),
    iphone11ProMaxEightScreen: (context) => Iphone11ProMaxEightScreen(),
    iphone11ProMaxSevenScreen: (context) => Iphone11ProMaxSevenScreen(),
    iphone11ProMaxTwentyoneScreen: (context) => Iphone11ProMaxTwentyoneScreen(),
    iphone11ProMaxNineScreen: (context) => Iphone11ProMaxNineScreen(),
    iphone11ProMaxThirteenScreen: (context) => Iphone11ProMaxThirteenScreen(),
    iphone11ProMaxTenScreen: (context) => Iphone11ProMaxTenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
