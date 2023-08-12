import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class DefaultDivider extends StatelessWidget {
  const DefaultDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          height: 1.h,
              color: Colors.white.withOpacity(0.5),
        ))
      ],
    );
  }
}
