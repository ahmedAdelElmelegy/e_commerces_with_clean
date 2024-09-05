
import 'package:fashions/core/style/my_text_style.dart';
import 'package:flutter/material.dart';

class OrderTitleBody extends StatelessWidget {
  const OrderTitleBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Orders',
      style: MyTextStyle.f20boldblack(context),
    );
  }
}