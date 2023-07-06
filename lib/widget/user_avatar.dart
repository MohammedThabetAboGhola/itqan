import 'package:flutter/material.dart';
import 'package:itqan/utils/style/app_color.dart';

class UserAvatar extends StatelessWidget {
  final String imageName;
  const UserAvatar({
    super.key,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: AppColor.buttonColor_1,
      child: CircleAvatar(
        radius: 30,
        backgroundImage: Image.asset(imageName).image,
      ),
    );
  }
}
