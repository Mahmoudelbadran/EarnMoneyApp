import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'item_payment_view/item_payment_view.dart';

class BuilderPaymentView extends StatelessWidget {
  final TextEditingController payment;
  final TextEditingController count;
  const BuilderPaymentView({Key? key, required this.payment, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 23.h,
      child: ListView.separated(
        itemBuilder: (context, index) =>  ItemPaymentView(payment: payment,count: count,),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 4,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
