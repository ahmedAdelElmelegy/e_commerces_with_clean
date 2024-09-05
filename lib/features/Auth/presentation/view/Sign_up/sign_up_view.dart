import 'package:fashions/features/Auth/presentation/view/Sign_up/presentation/view/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SignUpViewBody(size: size),
    );
  }
}
