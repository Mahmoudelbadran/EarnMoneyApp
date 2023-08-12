import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../style/style.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  GlobalKey<ScaffoldState> key =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: backGround,
      appBar: AppBar(backgroundColor: Colors.black45,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white,),),
        title: Text("Support",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700,color: Colors.white),),
        centerTitle: true,
      ),
      body: SizedBox(
          width:
          100.w,
          height: 100.h,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){},
                child:SvgPicture.asset("images/whatsss.svg",width: 25.w,) ,),
              InkWell(
                onTap: (){},
                child:SvgPicture.asset("images/facebook.svg",width: 25.w,) ,),
              InkWell(
                onTap: (){},
                child:SvgPicture.asset("images/telegram.svg",width: 25.w,) ,),
            ],)),
    );
  }
}
