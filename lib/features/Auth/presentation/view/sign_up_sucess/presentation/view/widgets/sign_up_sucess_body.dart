import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpSucessBody extends StatelessWidget {
  const SignUpSucessBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.check_circle,
            size: 100,
            color: AppColor.sucessicon,
          ),
          verticalSpacing(0.05, context),
          Text(
            'Successful!',
            style: MyTextStyle.f24boldblack(context),
            textAlign: TextAlign.center,
          ),
          verticalSpacing(0.01, context),
          Text(
            'you have successfully registered in our app and start working in it',
            style: MyTextStyle.f15boldgrey(context),
            textAlign: TextAlign.center,
          ),
          verticalSpacing(0.1, context),
          CustomButton(
              onPressed: () {
                // Get.replace(MainScreen());
              },
              color: Colors.black,
              colortext: Colors.white,
              size: size,
              text: 'Start Shoping'),
          verticalSpacing(0.1, context)
        ],
      ),
    );
  }
}
