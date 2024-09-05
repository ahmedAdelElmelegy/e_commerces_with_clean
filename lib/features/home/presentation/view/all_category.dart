import 'package:fashions/features/home/presentation/view/widgets/all_category_body.dart';
import 'package:flutter/material.dart';

class AllCategory extends StatelessWidget {
  const AllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: AllCategoryBody(),
      ),
    );
  }
}



