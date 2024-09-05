import 'package:fashions/core/style/my_text_style.dart';
import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomListTitle({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        title,
        style: MyTextStyle.f20boldblack(context),
      ),
      trailing: InkWell(
        onTap: onTap,
        child: Text(
          'View All',
          style: MyTextStyle.f13boldgrey(context),
        ),
      ),
    );
  }
}
