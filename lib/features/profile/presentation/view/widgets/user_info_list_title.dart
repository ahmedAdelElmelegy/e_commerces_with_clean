import 'package:fashions/core/style/my_text_style.dart';
import 'package:flutter/material.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  blurRadius: 10,
                  spreadRadius: 1),
            ]),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://img.freepik.com/free-photo/front-view-smiley-business-man_23-2148479583.jpg?t=st=1725295652~exp=1725299252~hmac=049c0dad082c3a62f5aec94bd5b21768372bb319fa565556156cc05664a8f315&w=900',
              width: size.width * .2,
            ),
          ),
          title: Text(
            'Ahmed Adel',
            style: MyTextStyle.f18boldblack(context),
          ),
          subtitle: Text(
            'hellow every one',
            style: MyTextStyle.f13sboldgrey(context),
          ),
        ));
  }
}
