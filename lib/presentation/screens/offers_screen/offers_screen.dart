import 'package:earnmoney/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../view/builder_offers_view/builder_offers_view.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
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
        title: Text("Offers",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700,color: Colors.white),),
        centerTitle: true,
      ),
      body: SizedBox(
        width:
          100.w,
          height: 100.h,
          child: const BuilderOffersView()),
    );
  }
}
