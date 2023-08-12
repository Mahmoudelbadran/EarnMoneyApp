import 'dart:async';
import 'package:earnmoney/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../core/chang_page/change_pages.dart' as screens;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
     Timer(const Duration(seconds: 3), () {
           Navigator.pushNamedAndRemoveUntil(
              context, screens.onBoardingScreen, (route) => false);
         });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      body: Container(
        width: 100.w,
        height: 100.h,
        color: backGround,
        child: Center(child: Image.asset("images/logor.png"),),
      ),
    );
  }
}
