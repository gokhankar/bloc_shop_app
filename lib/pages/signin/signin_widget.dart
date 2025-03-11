
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildThirdPartyLogin(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,

    children: [
      GestureDetector(
        child: Container(
          width: 40.w,
          height: 40.w,
          child: Image.asset("assets/icons/google.png"),
        ),
      ),
    ],
  );
}