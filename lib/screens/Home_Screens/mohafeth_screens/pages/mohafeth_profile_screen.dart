import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_assets.dart';
import 'package:itqan/constants/manger_route.dart';
import 'package:itqan/constants/manger_string.dart';
import '../../../../utils/style/app_color.dart';
import '../../../../widget/text_app_bar.dart';
import '../../../../widget/user_profile.dart';


class MoaProfileScreen extends StatefulWidget {
  const MoaProfileScreen({Key? key}) : super(key: key);

  @override
  State<MoaProfileScreen> createState() => _MoaProfileScreenState();
}

class _MoaProfileScreenState extends State<MoaProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar:  AppBar(
          leading: IconButton(
            color: Colors.white,
            onPressed: (){
              Navigator.pushReplacementNamed(context, Routes.bottomNavigationBarScreenMoa);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const TextAppBar(title: MangerString.myDataBottomBar),
          centerTitle: true,
          backgroundColor: AppColor.buttonColor_1,
        ),
        body: UserProfile(
          image: MangerAssets.person,
          nameUser: MangerString.nameUser,
          identifyNumberUser: MangerString.identifyNumberUser,
          jobUser: MangerString.jobUser1,
          siteUser: MangerString.siteUser,
        )
      ),
    );
  }
}




