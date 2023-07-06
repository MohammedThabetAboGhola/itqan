import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_assets.dart';
import 'package:itqan/constants/manger_fonts.dart';
import 'package:itqan/constants/manger_string.dart';
import 'package:itqan/screens/Home_Screens/pages/home_screen.dart';
import 'package:itqan/screens/Home_Screens/pages/user_profile_screen.dart';
import 'package:itqan/utils/style/app_color.dart';

import '../../../constants/manger_route.dart';
import '../../../widget/drawer_item.dart';
import '../../../widget/user_avatar.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  int currentTab = 0;
  final List<Widget> screens =[
    HomeScreen(), UserProfileScreen()
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.buttonColor_1  ,
          onPressed: (){
            Navigator.pushReplacementNamed(context, Routes.addStudentScreen);
          },
          child: const Icon(Icons.person_add,color: Colors.white ,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = HomeScreen();
                          currentTab=0;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(Icons.home,size: 28,
                            color: currentTab == 0 ? AppColor.buttonColor_1 : Colors.grey,
                          ),
                          Text(MangerString.homeBottomBar,
                            style: TextStyle(
                                fontFamily: MangerFonts.cairo,fontSize: 15,
                                color: currentTab == 0 ? AppColor.buttonColor_1 : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = UserProfileScreen();
                          currentTab=1;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(Icons.person,size: 28,
                            color: currentTab == 1 ? AppColor.buttonColor_1 : Colors.grey,
                          ),
                          Text(MangerString.myDataBottomBar,
                            style: TextStyle(fontFamily: MangerFonts.cairo,fontSize: 15,
                              color: currentTab == 1 ? AppColor.buttonColor_1 : Colors.grey,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
