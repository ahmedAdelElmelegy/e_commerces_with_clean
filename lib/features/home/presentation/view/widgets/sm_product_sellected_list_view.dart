import 'package:fashions/features/home/presentation/view/widgets/Selected_sm_product.dart';
import 'package:flutter/material.dart';

class SmProductSellectedListView extends StatefulWidget {
  const SmProductSellectedListView({
    super.key,
    required this.smImage,
  });
  final List<dynamic> smImage;
  @override
  State<SmProductSellectedListView> createState() =>
      _SmProductSellectedListViewState();
}

int _currentIndex = 0;

class _SmProductSellectedListViewState
    extends State<SmProductSellectedListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          widget.smImage.length,
          (index) => InkWell(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: SelectedSmProduct(
                image: widget.smImage[index],
                isActive: _currentIndex == index,
              )),
        ));
  }
}
