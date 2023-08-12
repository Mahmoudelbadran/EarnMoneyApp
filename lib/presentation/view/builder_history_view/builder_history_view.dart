import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'item_history_view/item_history_view.dart';

class BuilderHistoryView extends StatelessWidget {
  const BuilderHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 55.h,
      child: ListView.separated(
        itemBuilder: (context, index) => const ItemHistoryView(),
        separatorBuilder: (context, index) =>  Divider(color: Colors.white.withOpacity(0.2),),
        itemCount: 20,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
