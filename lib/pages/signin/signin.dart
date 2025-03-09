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
    return  Container(
      color: Colors.white,
      child: SafeArea(child: Scaffold(
        backgroundColor: Colors.white,

          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: PreferredSize(preferredSize: Size.fromHeight(1), child: Container(
              color: Colors.grey.withAlpha(40),
              height: 1,
            ))
            ,
            title: Text("Log In", style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.normal
            ),),
          ),
      )),
    );
  }
}
