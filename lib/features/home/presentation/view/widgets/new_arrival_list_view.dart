import 'package:fashions/core/widgets/custom_loading_indicator.dart';
import 'package:fashions/features/home/presentation/manager/product_controller.dart';
import 'package:fashions/features/home/presentation/view/widgets/Product_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewArrivalProdcutListView extends StatelessWidget {
  NewArrivalProdcutListView({super.key});
  ProductController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const CustomLoadingIndicator();
      } else if (controller.product.isNotEmpty) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            controller.product.length,
            (index) => ProductCategoryWidget(
              products: controller.product[index],
            ),
          )),
        );
      } else {
        return const Text('the Product is Empty');
      }
    });
  }
}
