import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'item_top_offers/item_top_offers.dart';

class TopOffersBuilder extends StatelessWidget {
  const TopOffersBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:1.h),
      width: 100.w,
      height: 22.h,
      child: ListView.separated(
        itemBuilder: (context, index) => ItemTopOffers(),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        ),
    );
  }
}
