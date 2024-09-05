import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/features/profile/data/profile_model.dart';
import 'package:flutter/material.dart';

class CustomListTitleProfile extends StatelessWidget {
  final ProfileModel profile;
  const CustomListTitleProfile({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.orange.withOpacity(.2),
      onTap: profile.fun,
      child: ListTile(
        leading: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: AppColor.transperantColor,
          onTap: () {},
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.incrementColor,
            child: Padding(
              padding:const EdgeInsets.all(8.0),
              child: Icon(profile.icon),
            ),
          ),
        ),
        title: Text(
          profile.title,
          style: MyTextStyle.f15boldblack(context),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
        ),
      ),
    );
  }
}
