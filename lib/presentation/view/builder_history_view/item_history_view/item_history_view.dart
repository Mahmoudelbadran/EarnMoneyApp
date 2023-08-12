import 'package:earnmoney/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItemHistoryView extends StatelessWidget {
  const ItemHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 100.w,
      height: 8.h,
      child: ListTile(
        leading: const CircleAvatar(backgroundColor: backGround,backgroundImage: AssetImage("images/voda.jpg"),),
        title:  Text("vodafone Cash",style:TextStyle(fontSize: 15.sp,color: Colors.white) ,),
        subtitle:  Text("20\$=20000 point",style:TextStyle(fontSize: 10.sp,color: Colors.white.withOpacity(0.5)) ),
        trailing:Text("20/3/2023",style: TextStyle(letterSpacing: 1.sp,fontSize: 10.sp,color: Colors.white.withOpacity(0.5)),) ,
      ),
    );
  }
}
