import 'package:flutter/material.dart';

import 'item_video_view/item_video_view.dart';

class BuilderVideoView extends StatelessWidget {
  const BuilderVideoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        runAlignment: WrapAlignment.start,
        children: List.generate(
          2,
              (index) => const ItemVideoView(),
        ),
      ),
    );
  }
}
