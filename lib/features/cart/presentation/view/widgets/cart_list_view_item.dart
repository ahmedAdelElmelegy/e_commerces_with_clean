import 'package:fashions/features/cart/presentation/view/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartListViewItem extends StatelessWidget {
  const CartListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const CartItem(),
        itemCount: 10,
      ),
    );
  }
}
