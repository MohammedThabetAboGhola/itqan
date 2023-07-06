import 'package:flutter/material.dart';
import 'package:itqan/utils/style/app_color.dart';

class DrawerItem extends StatelessWidget {
  final String? title;
  final String? routName;
  final IconData? icon;

  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
    required this.routName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
          Navigator.pushReplacementNamed(context, routName!);
      },
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 25,
        ),
        child: Row(
          children: [
            Text(
              title!,
              style: const TextStyle(
                fontFamily: 'Cairo',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: AppColor.buttonColor_1,
              ),
            ),
            const Spacer(),
            Icon(
              icon!,
              color: AppColor.buttonColor_1,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
