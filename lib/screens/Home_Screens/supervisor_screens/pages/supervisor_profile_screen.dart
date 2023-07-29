import 'package:flutter/material.dart';
import 'package:itqan/core/constants/manger_assets.dart';
import 'package:itqan/core/constants/manger_route.dart';
import 'package:itqan/core/constants/manger_string.dart';
import '../../../../utils/style/app_color.dart';
import '../../../../widget/text_app_bar.dart';
import '../../../../widget/user_profile.dart';


class SupervisorProfileScreen extends StatefulWidget {
  const SupervisorProfileScreen({Key? key}) : super(key: key);

  @override
  State<SupervisorProfileScreen> createState() => _SupervisorProfileScreenState();
}

class _SupervisorProfileScreenState extends State<SupervisorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar:  AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, Routes.bottomNavigationBarScreenSupervisor);
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
          jobUser: MangerString.jobUser,
          siteUser: MangerString.siteUser,
        )
      ),
    );
  }
}




