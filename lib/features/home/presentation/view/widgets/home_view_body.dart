import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/features/home/presentation/view/all_category.dart';
import 'package:fashions/features/home/presentation/view/widgets/Product_category_widget.dart';
import 'package:fashions/features/home/presentation/view/widgets/category_list_view.dart';
import 'package:fashions/features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:fashions/features/home/presentation/view/widgets/custom_banner.dart';
import 'package:fashions/features/home/presentation/view/widgets/custom_list_title.dart';
import 'package:fashions/features/home/presentation/view/widgets/new_arrival_list_view.dart';
import 'package:fashions/features/home/presentation/view/widgets/popular_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const CustomAppBar(),
                  verticalSpacing(0.03, context),
                  CustomBanner(size: size),
                  verticalSpacing(0.01, context),
                  CustomListTitle(
                    title: 'Category',
                    onTap: () {
                      Get.to(const AllCategory());
                    },
                  ),
                  verticalSpacing(0.01, context),
                   CategoryListView(),
                  const CustomListTitle(title: 'New Arrivals'),
                  verticalSpacing(0.01, context),
                   NewArrivalProdcutListView(),
                  verticalSpacing(0.01, context),
                  const CustomListTitle(title: 'Popular'),
                  verticalSpacing(0.01, context),
                ],
              ),
            ),
            SliverList.builder(
              itemBuilder: (context, index) => const PopularItem(),
              itemCount: 10,
            ),
          ],
        ));
  }
}
