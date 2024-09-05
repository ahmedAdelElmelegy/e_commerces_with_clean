import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:flutter/material.dart';

class CustomUploadImage extends StatelessWidget {
  const CustomUploadImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://img.freepik.com/free-photo/front-view-smiley-business-man_23-2148479583.jpg?t=st=1725295652~exp=1725299252~hmac=049c0dad082c3a62f5aec94bd5b21768372bb319fa565556156cc05664a8f315&w=900',
                width: size.width * .25,
              ),
            ),
            Positioned(
              bottom: -10,
              right: -10,
              child: Container(
                height: size.height * .04,
                width: size.width * .09,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
        verticalSpacing(0.01, context),
        Text(
          'Upload image',
          style: MyTextStyle.f18boldblack(context),
        ),
      ],
    );
  }
}
