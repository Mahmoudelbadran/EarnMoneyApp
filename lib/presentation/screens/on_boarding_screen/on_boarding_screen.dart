import 'package:earnmoney/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/chang_page/change_pages.dart';
import '../../view/on_boarding_view/on_boarding_view.dart';
import '../model/model_on_boarding_data.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  PageController pageController=PageController();
  List<OnBoardingData> onBoardingData = [
    OnBoardingData(
        "PLAY AND WIN",
        "games and earn points or rewards when they achieve good results. Users can redeem the points they earn in the app for real rewards or special offers.",
        "images/logoy.png"),
    OnBoardingData(
        "EARN MONEY",
        "games and earn points or rewards when they achieve good results. Users can redeem the points they earn in the app for real rewards or special offers.",
        "images/logox.png"),
    OnBoardingData(
        "WIN CARD",
        "games and earn points or rewards when they achieve good results. Users can redeem the points they earn in the app for real rewards or special offers.",
        "images/logom.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: backGround,
      body: Container(
        width: 100.w,
        height: 100.h,
        color: backGround,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100.w,
              height: 83.h,
              child: PageView.builder(
                controller: pageController,
                  itemCount: onBoardingData.length,
                  itemBuilder: (context, index) => OnBoardingView(
                        data: onBoardingData[index],
                      )),
            ),
            SizedBox(
              width: 100.w,
              height: 7.h,
              child: Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count:  onBoardingData.length,
                  axisDirection: Axis.horizontal,
                  effect:  const SlideEffect(
                      spacing:  8.0,
                      radius:  4.0,
                      dotWidth:  24.0,
                      dotHeight:  16.0,
                      paintStyle:  PaintingStyle.stroke,
                      strokeWidth:  1.5,
                      dotColor:  Colors.grey,
                      activeDotColor:  Colors.indigo
                  ),
                ),
              ) ,
            ),
            SizedBox(
              width: 100.w,
              height: 10.h,
              child: Stack(
                children: [
                  Positioned(
                      top: 1.h,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, signInScreen, (route) => false);
                        },
                        child: Container(
                          width: 100.w,
                          height: 9.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.elliptical(250, 100),
                                  topRight: Radius.elliptical(250, 100)),
                              boxShadow: [
                                BoxShadow(color: shadowColor, blurRadius: 5.sp)
                              ]),
                          child: Center(
                              child: Text(
                                "Get Start!",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: backGround),
                              ),),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
