import 'package:bloc_shop_app/common/values/colors.dart';
import 'package:bloc_shop_app/pages/signin/signin_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Container(
                color: AppColors.primarySecondaryBackground,
                height: 1,
              )),
          title: Text(
            "Log In",
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildThirdPartyLogin(context),
              opacText(
                "or Login with email",
              ),
              Container(
                margin: EdgeInsets.only(top: 10.h),
                padding: EdgeInsets.only(left: 25.w, right: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reusableText("Email"),
                    SizedBox(
                      height: 5.h,
                    ),
                    buildTextField("Enter your email address", "email", "user"),
                    reusableText("Password"),
                    SizedBox(
                      height: 5.h,
                    ),
                    buildTextField("Enter your password", "password", "lock"),
                    SizedBox(
                      height: 20.h,
                    ),
                    forgotPassword(),
                    buildLogInAndRegButton("Log In", "login"),
                    buildLogInAndRegButton("Register", "register"),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
