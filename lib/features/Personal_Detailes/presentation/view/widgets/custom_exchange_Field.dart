import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomExchangeField extends StatelessWidget {
  const CustomExchangeField({
    super.key,
    required this.name,
    required this.hintText,
  });
  final String name;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: MyTextStyle.f18boldgrey(context),
        ),
        SizedBox(
            width: size.width * .6, child: CustomTextField(hintText: hintText))
      ],
    );
  }
}
