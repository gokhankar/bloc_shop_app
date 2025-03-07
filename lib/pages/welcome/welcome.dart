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
  PageController pageController = PageController(initialPage: 0);
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
                    controller: pageController,
                    onPageChanged: (pageIndex) {
                      state.pageIndex = pageIndex;
                      BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                      //debugPrint(state.pageIndex.toString());
                    },
                    children: [
                      _tabComponent(
                        1,
                        "Good Applications",
                        "We build really good and modern applications for every specific firm and end user.",
                        "next",
                        "assets/images/reading.png",
                      ),
                      _tabComponent(
                        2,
                        "You will love it",
                        "Our Apps are not only progressive and effective but also good looking and funny.",
                        "next",
                        "assets/images/boy.png",
                      ),
                      _tabComponent(
                        3,
                        "Connect with us",
                        "Lets start to speak about your firms future and work together. Not forget to leave a review.",
                        "lets get started",
                        "assets/images/man.png",
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
                        activeSize: const Size(16, 8),
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
        SizedBox(
            width: 345.w,
            height: 345.w,
            child: Image.asset(
              assetPath,
              fit: BoxFit.cover,
            )),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        //SizedBox(height: 10.h,),
        Container(
          width: 375.w,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black.withAlpha(100),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print(index);
            //index 0-2
            if (index < 3) {
              //animation
              pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 500),
                curve: Curves.decelerate,
              );
            } else {
              //go to next page
            }
          },
          child: Container(
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
        ),
      ],
    );
  }
}
