import 'package:flutter/material.dart';
import 'package:quickbitemk/core/app_export.dart';
import 'package:quickbitemk/widgets/custom_elevated_button.dart';
import 'package:quickbitemk/widgets/custom_text_form_field.dart';

class Iphone11ProMaxTwoScreen extends StatelessWidget {
  Iphone11ProMaxTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10004,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLoginSection(context),
                SizedBox(
                  width: 184.h,
                  child: Divider(
                    color: theme.colorScheme.primary,
                    indent: 50.h,
                  ),
                ),
                SizedBox(height: 61.v),
                Opacity(
                  opacity: 0.4,
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.h),
                    child: Text(
                      "Email address",
                      style: CustomTextStyles.titleSmallSFProTextBlack900,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.h),
                  child: CustomTextFormField(
                    controller: emailController,
                    hintText: "Dosamarvis@gmail.com",
                    textInputType: TextInputType.emailAddress,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 45.v),
                Opacity(
                  opacity: 0.4,
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.h),
                    child: Text(
                      "Password",
                      style: CustomTextStyles.titleSmallSFProTextBlack900,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.h),
                  child: CustomTextFormField(
                    controller: passwordController,
                    hintText: "* * * * * * * * ",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    alignment: Alignment.center,
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 34.v),
                Padding(
                  padding: EdgeInsets.only(left: 50.h),
                  child: Text(
                    "Forgot passcode?",
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildLoginButtonSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 80.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 98.v),
          SizedBox(
            height: 162.v,
            width: 150.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBellaOlonjeLogo,
                  height: 162.v,
                  width: 131.h,
                  alignment: Alignment.centerLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector1,
                  height: 115.v,
                  width: 59.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 9.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 55.v),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Login",
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "Sign-up",
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButtonSection(BuildContext context) {
    return CustomElevatedButton(
      text: "Login",
      margin: EdgeInsets.only(
        left: 50.h,
        right: 50.h,
        bottom: 41.v,
      ),
    );
  }
}
