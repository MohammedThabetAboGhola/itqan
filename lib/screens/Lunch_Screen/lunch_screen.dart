import 'package:flutter/material.dart';
import '../../constants/manger_assets.dart';
import '../../constants/manger_route.dart';



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
