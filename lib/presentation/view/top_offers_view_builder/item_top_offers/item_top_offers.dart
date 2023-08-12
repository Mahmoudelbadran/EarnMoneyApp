import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../style/style.dart';

class ItemTopOffers extends StatelessWidget {
  const ItemTopOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.sp),
      width: 30.w,
      height: 15.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
        color: backGround,
        boxShadow: [BoxShadow(color: shadowColor, blurRadius: 5.sp)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(6.sp),
                width: 25.w,
                height: 10.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.sp),
                  color: backGround,
                  boxShadow: [BoxShadow(color: shadowColor, blurRadius: 2.sp)],
                ),
              child: ClipOval(
                clipBehavior: Clip.antiAlias,
                  child: Image.asset("images/offerss.jpg")),
            ),
          ),
          Expanded(child: Text("1xBet",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 15.sp),)),
          Expanded(child: Text("10 Point",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 10.sp),))
        ],
      ),
    );
  }
}
