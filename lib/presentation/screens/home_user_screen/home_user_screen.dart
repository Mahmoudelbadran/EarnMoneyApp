import 'package:earnmoney/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../view/home_view/home_view.dart';
import '../../view/top_offers_view_builder/top_offers_view_builder.dart';

class HomeUserScreen extends StatefulWidget {
  const HomeUserScreen({Key? key}) : super(key: key);

  @override
  State<HomeUserScreen> createState() => _HomeUserScreenState();
}

class _HomeUserScreenState extends State<HomeUserScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 90.h,
      child: Stack(
        children: [
          SizedBox(
            width: 100.w,
            height: 20.h,
            child: Column(
              children: [
                SvgPicture.asset("images/king.svg",height: 10.h,),
                Center(
                  child: Text(
                    "Top Offers:",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 18.h,
              child: Container(
                width: 100.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color: backGround,
                    boxShadow: [
                      BoxShadow(color: shadowColor, blurRadius: 10.sp)
                    ],
                    borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(20.sp),
                        topRight: Radius.circular(20.sp))),
                child:SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const TopOffersBuilder(),
                      SizedBox(
                        width: 90.w,
                        child: Text(
                          "All Features :",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const HomeView()
                  ],),
                ),
              ))
        ],
      ),
    );
  }
}
