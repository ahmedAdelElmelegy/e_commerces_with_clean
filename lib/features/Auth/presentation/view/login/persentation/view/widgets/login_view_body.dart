import 'package:fashions/core/error/validator.dart';
import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/core/widgets/custom_button.dart';
import 'package:fashions/core/widgets/custom_out_button.dart';
import 'package:fashions/core/widgets/custom_text_field.dart';
import 'package:fashions/features/Auth/presentation/manager/login_controller.dart';
import 'package:fashions/features/Auth/presentation/view/Auth_Review/presentation/view/widgets/custom_or.dart';
import 'package:fashions/features/Auth/presentation/view/Sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});
  LoginController controller = Get.find<LoginController>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isobsecure = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpacing(0.1, context),
              Center(
                child: SvgPicture.asset(
                  Assets.imagesLogo,
                  color: Colors.black,
                ),
              ),
              verticalSpacing(0.05, context),
              Text(
                'Welcome!',
                style: MyTextStyle.f20boldblack(context),
              ),
              Text(
                'please login or sign up to continue our app',
                style: MyTextStyle.f13boldgrey(context),
              ),
              verticalSpacing(0.07, context),
              Obx(() {
                return Column(
                  children: [
                    CustomTextField(
                      controller: emailController,
                      hintText: 'Email',
                      validator: (value) {
                        return Validator.validateEmail(value ?? '');
                      },
                    ),
                    verticalSpacing(0.02, context),
                    CustomTextField(
                      icon: Icons.remove_red_eye,
                      controller: passwordController,
                      hintText: 'Password',
                      obsecureText: controller.isHint.value,
                      isObsecure: () {
                        controller.isObsecure();
                      },
                      validator: (value) {
                        return Validator.validatePassword(value ?? '');
                      },
                    ),
                    verticalSpacing(0.05, context),
                    CustomButton(
                        color: Colors.black,
                        colortext: Colors.white,
                        size: size,
                        text: 'Login',
                        child: controller.isLoading.value
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Text(
                                'Login',
                                textAlign: TextAlign.center,
                                style: MyTextStyle.f18boldblack(context)
                                    .copyWith(color: Colors.white),
                              ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            controller.login(
                                email: emailController.text,
                                password: passwordController.text);
                          }
                        }),
                  ],
                );
              }),
              verticalSpacing(0.01, context),
              const CustomOr(),
              verticalSpacing(0.01, context),
              CustomOutButton(
                isLogin: true,
                icon: Assets.imagesBiFacebook,
                size: size,
                text: 'Continue with Facebook',
                onPressed: () {},
              ),
              verticalSpacing(0.01, context),
              CustomOutButton(
                icon: Assets.imagesGoogle,
                isLogin: true,
                size: size,
                text: 'Continue with Google',
                onPressed: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: MyTextStyle.f13boldgrey(context),
                  ),
                  TextButton(
                      onPressed: () => Get.to(const SignUpView()),
                      child: Text(
                        'Sign Up',
                        style: MyTextStyle.f15boldblack(context),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
