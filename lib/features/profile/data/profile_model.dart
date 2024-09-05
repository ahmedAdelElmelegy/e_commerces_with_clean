import 'package:flutter/material.dart';

class ProfileModel {
  final IconData icon;
  final String title;
  final void Function()? fun;
  

  ProfileModel(this.fun,  {required this.icon, required this.title, });
}
