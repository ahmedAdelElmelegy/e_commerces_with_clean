import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/utils/constants.dart';
import 'package:fashions/features/profile/presentation/view/widgets/custom_list_title_profile.dart';
import 'package:fashions/features/profile/presentation/view/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileDataListView extends StatelessWidget {
  const ProfileDataListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColor.transperantColor,
          )),
      child: Column(
        children: List.generate(
          6,
          (index) => CustomListTitleProfile(
            profile: Constants.profileData1[index],
          ),
        ),
      ),
    );
  }
}
