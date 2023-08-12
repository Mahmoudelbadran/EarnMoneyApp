import 'package:flutter/material.dart';
import 'item_offers_view/item_offers_view.dart';

class BuilderOffersView extends StatelessWidget {
  const BuilderOffersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        runAlignment: WrapAlignment.start,
        children: List.generate(
          20,
              (index) => const ItemOffersView(),
        ),
      ),
    );
  }
}
