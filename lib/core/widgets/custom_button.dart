import 'package:fashions/core/style/my_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.size,
    required this.text,
    this.onPressed,
    this.color,
    this.colortext, this.child,
  });

  final Size size;
  final String text;
  final void Function()? onPressed;
  final Color? color;
  final Color? colortext;
  final Widget ?child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.white,
        minimumSize: Size(size.width, 50),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed,
      child: child?? Text(
        text,
        textAlign: TextAlign.center,
        style: MyTextStyle.f18boldblack(context)
            .copyWith(color: colortext ?? Colors.black),
      ),
    );
  }
}
