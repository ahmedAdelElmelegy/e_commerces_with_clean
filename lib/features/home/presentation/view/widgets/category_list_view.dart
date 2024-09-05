import 'package:fashions/core/widgets/custom_loading_indicator.dart';
import 'package:fashions/features/home/presentation/manager/category_controller.dart';
import 'package:fashions/features/home/presentation/view/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({
    super.key,
  });
  CategoryController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const CustomLoadingIndicator();
      } else if (controller.category.isNotEmpty) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              controller.category.length,
              (index) => IntrinsicWidth(
                  child: CategoryItem(
                categoyData: controller.category[index],
              )),
            ),
          ),
        );
      } else {
        return const Text('Category is Empty');
      }
    });
  }
}
