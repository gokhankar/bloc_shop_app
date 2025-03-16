import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/values/colors.dart';

Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 30.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        socialButton("assets/icons/google.png"),
        socialButton("assets/icons/apple.png"),
        socialButton("assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget socialButton(String iconPath) {
  return GestureDetector(
    child: SizedBox(
      width: 40.w,
      height: 40.w,
      child: Image.asset(iconPath),
    ),
  );
}

Widget opacText(String text) {
  return Container(
      margin: EdgeInsets.only(bottom: 5.h),
      child: Text(text,
          style:
              TextStyle(color: Colors.grey.withAlpha(240), fontSize: 12.sp)));
}

Widget reusableText(String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h, top: 20.h),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey.withAlpha(100),
        fontWeight: FontWeight.normal,
        fontSize: 14.sp,
      ),
    ),
  );
}

Widget buildTextField(String hintText, String textType, String iconName) {
  return Container(
    width: 325.w,
    height: 50.h,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
        border: Border.all(color: AppColors.primaryFourElementText)),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 12.w),
          width: 16.w,
          height: 16.w,
          child: Image.asset("assets/icons/$iconName.png"),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 270.w,
          height: 50.h,
          alignment: Alignment.center,
          child: TextField(
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              hintStyle: const TextStyle(
                color: AppColors.primarySecondaryElementText,
              ),
            ),
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: "Avenir",
              fontWeight: FontWeight.normal,
              fontSize: 12.sp,
            ),
            autocorrect: false,
            obscureText: textType == "password" ? true : false,
          ),
        )
      ],
    ),
  );
}

Widget forgotPassword() {
  return SizedBox(
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
        child: Text(
          "Forgot password?",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: AppColors.primaryText,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.primaryText,
            fontWeight: FontWeight.normal,
            fontSize: 12.sp,
          ),
        ),
        onTap: () {}),
  );
}

Widget buildLogInAndRegButton(String buttonName, String buttonType) {
  return GestureDetector(
      child: Container(
          width: 325.w,
          height: 50.h,
          margin: EdgeInsets.only(
              top: buttonType == "login" ? 40.h : 20.h, left: 0.w, right: 0.w),
          decoration: BoxDecoration(
              color: buttonType == "login"
                  ? AppColors.primaryElement
                  : AppColors.primaryBackground,
              borderRadius: BorderRadius.all(Radius.circular(15.w)),
              border: Border.all(
                  color: buttonType == "login"
                      ? Colors.transparent
                      : AppColors.primaryFourElementText)),
          child: Center(
              child: Text(
            buttonName,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: buttonType == "login"
                  ? AppColors.primaryBackground
                  : AppColors.primaryText,
              fontWeight: FontWeight.normal,
              fontSize: 16.sp,
            ),
          ))),
      onTap: () {});
}
