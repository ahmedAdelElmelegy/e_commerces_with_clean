import 'package:fashions/features/my_orders/presentation/view/widgets/my_order_view_body.dart';
import 'package:flutter/material.dart';

class MyOrderView extends StatelessWidget {
  const MyOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: MyOrderViewBody(),
      ),
    );
  }
}
