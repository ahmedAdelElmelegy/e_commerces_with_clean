import 'package:fashions/core/error/validator.dart';
import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/core/widgets/custom_button.dart';
import 'package:fashions/core/widgets/custom_text_field.dart';
import 'package:fashions/features/Auth/presentation/manager/sign_up_controller.dart';
import 'package:fashions/features/Auth/presentation/view/login/persentation/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({
    super.key,
    required this.size,
  });
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final Size size;
  SignUpController controller = Get.find();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
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
                'Sign Up',
                style: MyTextStyle.f20boldblack(context),
              ),
              Text(
                'Create an  new account',
                style: MyTextStyle.f13boldgrey(context),
              ),
              verticalSpacing(0.07, context),
              Obx(() {
                return Column(
                  children: [
                    CustomTextField(
                      hintText: 'User Name',
                      controller: usernameController,
                      validator: (value) {
                        return Validator.validateName(value ?? '');
                      },
                    ),
                    verticalSpacing(0.02, context),
                    CustomTextField(
                      hintText: 'Phone',
                      controller: phoneController,
                      validator: (value) {
                        return Validator.validatePhoneNumber(value ?? '');
                      },
                    ),
                    verticalSpacing(0.02, context),
                    CustomTextField(
                      hintText: 'Email',
                      controller: emailController,
                      validator: (value) {
                        return Validator.validateEmail(value ?? '');
                      },
                    ),
                    verticalSpacing(0.02, context),
                    CustomTextField(
                      hintText: 'Password',
                      controller: passwordController,
                      validator: (value) {
                        return Validator.validatePassword(value ?? '');
                      },
                    ),
                    verticalSpacing(0.02, context),
                    CustomTextField(
                      hintText: 'Confirm Password',
                      controller: confirmPasswordController,
                      validator: (value) {
                        return Validator.validateConfirmPassword(
                            passwordController.text,
                            confirmPasswordController.text);
                      },
                    ),
                    verticalSpacing(0.05, context),
                    CustomButton(
                      color: Colors.black,
                      colortext: Colors.white,
                      size: size,
                      text: 'Sign Up',
                      child: controller.isLoading.value
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : Text(
                              'Sign Up',
                              style: MyTextStyle.f18boldwhite(context),
                            ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          controller.signUp(
                              email: emailController.text,
                              password: passwordController.text,
                              name: usernameController.text,
                              phone: phoneController.text);
                        }
                      },
                    ),
                  ],
                );
              }),
              verticalSpacing(0.01, context),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account',
                    style: MyTextStyle.f13boldgrey(context),
                  ),
                  TextButton(
                      onPressed: () => Get.to(const LoginView()),
                      child: Text(
                        'Login',
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
