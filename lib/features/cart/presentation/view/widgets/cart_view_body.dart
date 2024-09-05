import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/core/widgets/custom_button.dart';
import 'package:fashions/core/widgets/svg_icon.dart';
import 'package:fashions/features/cart/presentation/view/widgets/app_bar_cart.dart';
import 'package:fashions/features/cart/presentation/view/widgets/cart_list_view_item.dart';
import 'package:fashions/features/cart/presentation/view/widgets/check_out_btn.dart';
import 'package:fashions/features/cart/presentation/view/widgets/custom_prodcut_to_check_out.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: AppBarCart(),
        ),
        verticalSpacing(0.01, context),
        const CartListViewItem(),
        const CustomProductToCheckout()
      ],
    );
  }
}
