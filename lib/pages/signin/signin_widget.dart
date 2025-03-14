
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildThirdPartyLogin(BuildContext context){
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

Widget socialButton( String iconPath){
  return GestureDetector(
    child: Container(
      width: 40.w,
      height: 40.w,
      child: Image.asset(iconPath),
    ),
  );
}