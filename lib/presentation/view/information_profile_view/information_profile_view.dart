import 'package:earnmoney/core/chang_page/change_pages.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InformationProfileView extends StatelessWidget {
  const InformationProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(8.sp),
          child: Text("UserName:   MahmoudBadran",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 15.sp)),
        ),
        Padding(
          padding: EdgeInsets.all(8.sp),
          child: Text("Email: t.badran77@gmail.com",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 15.sp)),
        ),
        Padding(
          padding: EdgeInsets.all(8.sp),
          child: Text("Adress Id: 1.22.88.33",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 15.sp)),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, signInScreen, (route) => false);
          },
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.only(
                left: 20.sp,
                right: 20.sp,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.sp)),
              side: BorderSide(color: Colors.redAccent, width: 1.sp)),
          child: Text(
            "SignOut",
            style: TextStyle(fontSize: 13.sp, color: Colors.white),
          ),
        )
      ],
    );
  }
}
