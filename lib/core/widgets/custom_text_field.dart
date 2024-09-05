import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;

  final String? errorText;
  final TextEditingController? controller;
  final bool? obsecureText;
  final IconData? icon;
  final void Function()? isObsecure;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.errorText,
    this.validator,
    this.onFieldSubmitted,
    this.controller,
    this.obsecureText,
    this.icon,
    this.isObsecure,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecureText ?? false,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          suffixIcon: IconButton(
              onPressed: isObsecure,
              icon: Icon(
                icon,
                size: 20,
              ))),
    );
  }
}
