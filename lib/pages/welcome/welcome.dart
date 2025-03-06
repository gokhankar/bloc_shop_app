//import 'package:flutter/cupertino.dart';
import 'package:bloc_shop_app/pages/welcome/bloc/welcome_blocs.dart';
import 'package:bloc_shop_app/pages/welcome/bloc/welcome_events.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/welcome_states.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.only(top: 35.h),
              width: 375.w,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView(
                    onPageChanged: (pageIndex) {
                      state.pageIndex = pageIndex;
                      BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                      //debugPrint(state.pageIndex.toString());
                    },
                    children: [
                      _tabComponent(
                        0,
                        "Buy good Applications",
                        "We build really good application for every specific firm",
                        "next",
                        "path",
                      ),
                      _tabComponent(
                        1,
                        "You will love it",
                        "To have a lovely and really competitive applications",
                        "next",
                        "path",
                      ),
                      _tabComponent(
                        1,
                        "Connect with us",
                        "Lets start to have together and work with",
                        "lets get started",
                        "path",
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 100.h,

                    child: DotsIndicator(
                      position: state.pageIndex.toDouble(),
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,

                      decorator: DotsDecorator(
                        color: Colors.grey,
                        activeColor: Colors.blue,
                        size: const Size.square(8),
                        activeSize: const Size(10, 8),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _tabComponent(
    int index,
    String title,
    String subTitle,
    String buttonTitle,
    String assetPath,
  ) {
    return Column(
      children: [
        SizedBox(width: 345.w, height: 345.w, child: Text("Image1")),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            subTitle,
            style: TextStyle(
              color: Colors.black.withAlpha(100),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
          width: 325.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15.w),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(100),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(1, 3),
              ),
            ],
          ),
          child: Center(
            child: Text(
              buttonTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
