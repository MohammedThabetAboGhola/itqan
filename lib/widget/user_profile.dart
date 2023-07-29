import 'package:flutter/material.dart';

import '../core/constants/manger_fonts.dart';
import '../utils/style/app_color.dart';

class UserProfile extends StatelessWidget {
  final String image;
  final String nameUser;
  final String identifyNumberUser;
  final String jobUser;
  final String siteUser;

  const UserProfile({
    super.key,
    required this.image,
    required this.nameUser,
    required this.identifyNumberUser,
    required this.jobUser,
    required this.siteUser,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(height: 50,),
            TextUserProfile(text: nameUser),
            const SizedBox(height: 10,),
            TextUserProfile(text: identifyNumberUser),
            const SizedBox(height: 10,),
            TextUserProfile(text: jobUser),
            const SizedBox(height: 10,),
            TextUserProfile(text: siteUser),
          ],
        ),
      ),
    );
  }
}

class TextUserProfile extends StatelessWidget {
  final String text;
  const TextUserProfile({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: MangerFonts.cairo,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColor.buttonColor_1
      ),
    );
  }
}