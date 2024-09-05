import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/features/home/presentation/manager/category_controller.dart';
import 'package:fashions/features/home/presentation/view/widgets/Custom_category_list_view.dart';
import 'package:fashions/features/home/presentation/view/widgets/app_bar_all_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllCategoryBody extends StatelessWidget {
   AllCategoryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          const AppBarAllCategory(),
          verticalSpacing(0.02, context),
           CustomCategoryListView()
        ],
      ),
    );
  }
}
