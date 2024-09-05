import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/features/home/presentation/view/widgets/Product_category_widget.dart';
import 'package:fashions/features/home/presentation/view/widgets/app_bar_all_category.dart';
import 'package:fashions/features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:fashions/features/home/presentation/view/widgets/product_category_grid_view.dart';
import 'package:flutter/material.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarAllCategory(),
              verticalSpacing(0.02, context),
              Text(
                'TitleCategory',
                style: MyTextStyle.f20boldblack(context),
              ),
              verticalSpacing(0.02, context),
             const ProductCategoryGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
