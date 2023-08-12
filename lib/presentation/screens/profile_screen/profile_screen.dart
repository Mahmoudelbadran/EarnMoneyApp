import 'package:earnmoney/presentation/style/style.dart';
import 'package:earnmoney/presentation/view/image_profile_view/image_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../view/information_profile_view/information_profile_view.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 90.h,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ImageProfileView(),
          Container(
            width:80.w ,
            height: 35.h,
            decoration: BoxDecoration(
                color: backGround,
              boxShadow: [BoxShadow(color: shadowColor,blurRadius: 10.sp)],
              borderRadius: BorderRadius.circular(20.sp),
            ),
          child:const InformationProfileView() ,
          )

      ],),
      );
  }
}
