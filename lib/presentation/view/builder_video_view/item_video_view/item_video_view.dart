import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItemVideoView extends StatelessWidget {
  const ItemVideoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.all(5.sp),
        width: 46.w,
        height: 25.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10.sp),
            child: Image.asset("images/admod.jpg",fit: BoxFit.fill,)),
      ),
    );
  }
}
