import 'package:fashions/core/widgets/custom_border_Container.dart';
import 'package:fashions/features/profile/data/profile_model.dart';
import 'package:fashions/features/profile/presentation/view/widgets/custom_list_title_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CustomSettingsPersonl extends StatelessWidget {
  const CustomSettingsPersonl({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBorderContainer(
        child: Column(
      children: [
        CustomListTitleProfile(
          profile: ProfileModel(() {}, icon: Icons.language, title: 'Language'),
        ),
        CustomListTitleProfile(
          profile: ProfileModel(() {},
              icon: IconlyBold.notification, title: 'Notification'),
        ),
        CustomListTitleProfile(
          profile:
              ProfileModel(() {}, icon: Icons.dark_mode, title: 'DarkMode'),
        ),
        CustomListTitleProfile(
          profile: ProfileModel(() {}, icon: Icons.help, title: 'Help Center'),
        ),
      ],
    ));
  }
}
