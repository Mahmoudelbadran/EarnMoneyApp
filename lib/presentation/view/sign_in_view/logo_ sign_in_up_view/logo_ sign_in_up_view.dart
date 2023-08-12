import 'package:earnmoney/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LogoSignInView extends StatelessWidget {
  final String title;
  const LogoSignInView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 2.h,
            child: Image.asset(
              "images/logor.png",
              width: 100.w,
              height: 15.h,
            )),
        Positioned(
            top: 15.h,
            left: 5.w,
            child: Text(
              "Hello,",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: backGround,
                  fontWeight: FontWeight.w700),
            )),
        Positioned(
            top: 20.h,
            left: 5.w,
            child: Text(
              "WELCOME TO FreeLuke",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: backGround,
                  fontWeight: FontWeight.w700),
            )),
        Positioned(
            top: 25.h,
            left: 5.w,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: backGround,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.w),
            )),
      ],
    );
  }
}
