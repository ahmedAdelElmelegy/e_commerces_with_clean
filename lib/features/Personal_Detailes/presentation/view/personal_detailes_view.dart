import 'package:fashions/features/Personal_Detailes/presentation/view/widgets/personal_detailes_view_body.dart';
import 'package:flutter/material.dart';

class PersonalDetailesView extends StatelessWidget {
  const PersonalDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: PersonalDetailesViewBody(),
      ),
    );
  }
}
