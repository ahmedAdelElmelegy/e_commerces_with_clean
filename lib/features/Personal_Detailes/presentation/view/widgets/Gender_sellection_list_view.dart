import 'package:fashions/features/Personal_Detailes/presentation/view/widgets/gender_btn.dart';
import 'package:flutter/material.dart';

class GenderSellectionListView extends StatefulWidget {
  const GenderSellectionListView({super.key});

  @override
  State<GenderSellectionListView> createState() =>
      _GenderSellectionListViewState();
}

class _GenderSellectionListViewState extends State<GenderSellectionListView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          2,
          (index) => InkWell(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: GenderButton(
                isActive: _currentIndex == index,
              ))),
    );
  }
}
