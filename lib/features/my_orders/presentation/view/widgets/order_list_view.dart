import 'package:fashions/features/my_orders/presentation/view/widgets/order_list_view_item.dart';
import 'package:flutter/material.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemBuilder: (context, index) =>const OrderListViewItem(),
      itemCount: 10,
    ));
  }
}
