import 'package:earnmoney/bussinus_logic/home_logic/home_logic.dart';
import 'package:earnmoney/core/chang_page/change_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late HomeLogic cubit=HomeLogic.get(context);
    return Container(
      margin: EdgeInsets.only(top: 1.h),
      width: 100.w,
      height: 45.h,
      child: Wrap(
        children: [
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, offersScreen);
          },
          child: Container(
            margin: EdgeInsets.all(5.sp),
            width: 25.w,
            height: 15.h,
            child: Column(children: [
              Expanded(
                flex:3,
                  child: SvgPicture.asset("images/games.svg",height: 10.h,)),
              Expanded(child: Text("offers",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w700),))
            ],),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, videoScreen);
          },
          child: Container(
            margin: EdgeInsets.all(7.sp),
            width: 30.w,
            height: 15.h,
            child: Column(children: [
              Expanded(
                  flex:3,
                  child: SvgPicture.asset("images/movies.svg",height: 10.h,)),
              Expanded(child: Text("Video",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w700),))
            ],),
          ),
        ),
        InkWell(
          onTap: ()=>cubit.changeActive(0),
          child: Container(
            margin: EdgeInsets.all(7.sp),
            width: 30.w,
            height: 15.h,
            child: Column(children: [
              Expanded(
                  flex:3,
                  child: SvgPicture.asset("images/reedem.svg",height: 10.h,)),
              Expanded(child: Text("Redeem",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w700),))
            ],),
          ),
        ),
        InkWell(
          onTap: cubit.share,
          child: Container(
              margin: EdgeInsets.all(7.sp),
              width: 30.w,
              height: 15.h,
              child: Column(children: [
                Expanded(
                    flex:3,
                    child: SvgPicture.asset("images/share.svg",height: 10.h,)),
                Expanded(child: Text("Share",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w700),))
              ],),
            ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, supportScreen);
          },
          child: Container(
              margin: EdgeInsets.all(7.sp),
              width: 30.w,
              height: 15.h,
              child: Column(children: [
                Expanded(
                    flex:3,
                    child: SvgPicture.asset("images/chat.svg",height: 10.h,)),
                Expanded(child: Text("Support",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w700),))
              ],),
            ),
        )
      ],)
    ) ;
  }
}
