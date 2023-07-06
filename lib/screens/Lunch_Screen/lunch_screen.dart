import 'package:flutter/material.dart';

import '../../constants/manger_assets.dart';
import '../../constants/manger_string.dart';
import '../../constants/manger_route.dart';
import '../../utils/style/app_color.dart';



class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, Routes.loginScreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            MangerAssets.logoBackground,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Image.asset(
              MangerAssets.logo,
            ),
          ),
        ],
      ),
    );
  }
}
