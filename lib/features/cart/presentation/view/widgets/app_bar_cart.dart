import 'package:fashions/core/style/assets.dart';
import 'package:fashions/features/home/presentation/view/widgets/app_bar_all_category.dart';
import 'package:flutter/material.dart';

class AppBarCart extends StatelessWidget {
  const AppBarCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AppBarAllCategory(
     icon: Assets.imagesCartIcon,
              );
  }
}
