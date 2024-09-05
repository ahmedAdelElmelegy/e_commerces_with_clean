import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/features/On_boarding/data/on_boarding_model.dart';
import 'package:fashions/features/On_boarding/presentation/manager/on_boarding_controller.dart';
import 'package:fashions/features/On_boarding/presentation/view/widgets/Selected_onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.onBoardingModel,
    required this.isActive,
    required this.currentIndex,
    required this.totalItems,
  });
  final bool isActive;
  final OnBoardingModel onBoardingModel;
  final int currentIndex;
  final int totalItems;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 21),
      child: Column(
        children: [
          Image.asset(onBoardingModel.image),
          verticalSpacing(0.03, context),
          Text(
            onBoardingModel.title,
            style: MyTextStyle.f28boldblack(context),
          ),
          verticalSpacing(0.02, context),
          Text(
            'Publish up your  selfies to make  yourself more beautiful with this app',
            style: MyTextStyle.f13boldgrey(context),
          ),
          const Spacer(),
          Row(
            children: [
              Row(
                  children: List.generate(
                      3,
                      (index) => SelectedonBordingItem(
                            persentage:
                                _calculatePercentage(index, currentIndex),
                          ))),
              const Spacer(),
              GetBuilder<OnBoardingController>(
                  init: OnBoardingController(),
                  builder: (controller) {
                    return InkWell(
                        onTap: () {
                          controller.nextSpashReview();
                        },
                        child: SvgPicture.asset(Assets.imagesArrowIcon));
                  })
            ],
          ),
          verticalSpacing(0.02, context)
        ],
      ),
    );
  }

  double _calculatePercentage(int index, int currentIndex) {
    int difference = (currentIndex - index).abs();

    return difference < 1 ? 0.1 : 0.032;
  }
}
