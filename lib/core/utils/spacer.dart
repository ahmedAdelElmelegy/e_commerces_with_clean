import 'package:flutter/material.dart';

SizedBox verticalSpacing(double percentage, BuildContext context) => SizedBox(
      height: MediaQuery.of(context).size.height * percentage,
    );
SizedBox horizontalSpacing(double percentage, BuildContext context) => SizedBox(
      width: MediaQuery.of(context).size.width * percentage,
    );
