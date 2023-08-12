import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../view/builder_history_view/builder_history_view.dart';
import '../../view/builder_payment_view/builder_payment_view.dart';
class WithoutScreen extends StatefulWidget {
  const WithoutScreen({Key? key}) : super(key: key);

  @override
  State<WithoutScreen> createState() => _WithoutScreenState();
}

class _WithoutScreenState extends State<WithoutScreen> {
  TextEditingController payment=TextEditingController();
  TextEditingController count=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 90.h,
      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.all(6.sp),
              child: Text("Redeem:",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 15.sp)),
            ),
             BuilderPaymentView(payment:payment ,count:count ,),
            Padding(
              padding:  EdgeInsets.all(6.sp),
              child: Text("Previous Payments:",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 15.sp)),
            ),
           const BuilderHistoryView()
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    count.dispose();
   payment.dispose();
    super.dispose();
  }
}
