import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/core/widgets/svg_icon.dart';
import 'package:fashions/features/my_orders/presentation/view/widgets/order_list_view.dart';
import 'package:fashions/features/my_orders/presentation/view/widgets/order_title_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrderViewBody extends StatelessWidget {
  const MyOrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                Get.back();
              },
              child: const SvgIcon(icon: Assets.imagesArrowIconsvg)),
          verticalSpacing(0.02, context),
          const OrderTitleBody(),
          const OrderListView(),
        ],
      ),
    );
  }
}
