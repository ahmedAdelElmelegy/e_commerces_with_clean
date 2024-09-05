import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/constants.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/core/widgets/custom_border_Container.dart';
import 'package:fashions/core/widgets/svg_icon.dart';
import 'package:fashions/features/home/presentation/view/home_view.dart';
import 'package:fashions/features/profile/presentation/view/widgets/Profile_data_list_view.dart';
import 'package:fashions/features/profile/presentation/view/widgets/custom_list_title_profile.dart';
import 'package:fashions/features/profile/presentation/view/widgets/user_info_list_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../home/presentation/view/widgets/custom_list_title.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Profile',
                  style: MyTextStyle.f20boldblack(context),
                ),
                const Icon(
                  Icons.settings,
                  size: 30,
                )
              ],
            ),
            verticalSpacing(0.03, context),
            const UserInfoListTitle(),
            verticalSpacing(0.03, context),
            const ProfileDataListView(),
            verticalSpacing(0.03, context),
            CustomBorderContainer(
              child: Column(
                children: List.generate(
                    Constants.profileData2.length,
                    (index) => CustomListTitleProfile(
                          profile: Constants.profileData2[index],
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
