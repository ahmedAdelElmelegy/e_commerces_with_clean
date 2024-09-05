import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/core/widgets/custom_border_Container.dart';
import 'package:fashions/core/widgets/custom_button_icon.dart';
import 'package:fashions/core/widgets/custom_text_field.dart';
import 'package:fashions/features/Personal_Detailes/presentation/view/widgets/Gender_sellection_list_view.dart';
import 'package:fashions/features/Personal_Detailes/presentation/view/widgets/custom_exchange_Field.dart';
import 'package:fashions/features/Personal_Detailes/presentation/view/widgets/custom_settings_personal.dart';
import 'package:fashions/features/Personal_Detailes/presentation/view/widgets/custom_upload_image.dart';
import 'package:fashions/features/cart/presentation/view/widgets/custom_gender.dart';
import 'package:fashions/features/profile/data/profile_model.dart';
import 'package:fashions/features/profile/presentation/view/widgets/custom_list_title_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class PersonalDetailesViewBody extends StatelessWidget {
  const PersonalDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpacing(0.1, context),
            CustomUploadImage(size: size),
            verticalSpacing(0.05, context),
            const CustomExchangeField(
              name: 'Name',
              hintText: 'Ahmed Adel',
            ),
            verticalSpacing(0.03, context),
            const CustomGender(),
            verticalSpacing(0.03, context),
            const CustomExchangeField(
              name: 'Age',
              hintText: '22 Year',
            ),
            verticalSpacing(0.03, context),
            const CustomExchangeField(
              name: 'Email',
              hintText: 'ahmedadel@gmail.com',
            ),
            verticalSpacing(0.03, context),
            const CustomSettingsPersonl(),
            verticalSpacing(0.02, context),
            CustomButtonIcon(
              onPressed: () {},
              text: 'Log Out',
              icon: IconlyBold.logout,
            )
          ],
        ),
      ),
    );
  }
}
