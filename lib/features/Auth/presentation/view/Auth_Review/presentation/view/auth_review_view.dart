import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/core/widgets/custom_button.dart';
import 'package:fashions/core/widgets/custom_out_button.dart';
import 'package:fashions/features/Auth/presentation/bindings/login_bindings.dart';
import 'package:fashions/features/Auth/presentation/bindings/sign_up_bindings.dart';
import 'package:fashions/features/Auth/presentation/view/login/persentation/view/login_view.dart';
import 'package:fashions/features/Auth/presentation/view/Sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AuthReviewView extends StatelessWidget {
  const AuthReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.imagesSplash2), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Center(
                child: SvgPicture.asset(Assets.imagesLogo),
              ),
              verticalSpacing(0.3, context),
              CustomButton(
                text: 'Login',
                size: size,
                onPressed: () {
                  Get.to(const LoginView(), binding: LoginBindings());
                },
              ),
              verticalSpacing(.01, context),
              CustomOutButton(
                size: size,
                text: 'Sign Up',
                onPressed: () {
                  Get.to(const SignUpView(), binding: SignUpBindings());
                },
              ),

              ///
              verticalSpacing(.02, context),
            ],
          ),
        ),
      ),
    );
  }
}
