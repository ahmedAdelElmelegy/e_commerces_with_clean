import 'package:fashions/features/cart/presentation/view/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CartViewBody(),
      ),
    );
  }
}
