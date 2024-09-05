import 'package:fashions/features/home/presentation/view/widgets/Product_category_widget.dart';
import 'package:flutter/material.dart';

class ProductCategoryGridView extends StatelessWidget {
  const ProductCategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10),
        itemCount: 10,
        itemBuilder: (context, index) => ProductCategoryWidget(),
      ),
    );
  }
}
