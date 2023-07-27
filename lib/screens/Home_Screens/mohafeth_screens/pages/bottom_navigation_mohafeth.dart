import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_fonts.dart';
import 'package:itqan/constants/manger_string.dart';
import 'package:itqan/screens/Home_Screens/mohafeth_screens/pages/home_screen_mohafeth.dart';
import 'package:itqan/screens/Home_Screens/mohafeth_screens/pages/mohafeth_profile_screen.dart';
import 'package:itqan/utils/style/app_color.dart';

import '../../../../constants/manger_route.dart';



class BottomNavigationBarMoaScreen extends StatefulWidget {
  const BottomNavigationBarMoaScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarMoaScreen> createState() => _BottomNavigationBarMoaScreenState();
}

class _BottomNavigationBarMoaScreenState extends State<BottomNavigationBarMoaScreen> {

  int currentTab = 0;
  final List<Widget> screens =[
    HomeScreenMoa(), MoaProfileScreen()
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = HomeScreenMoa();

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
                          currentScreen = HomeScreenMoa();
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
                          currentScreen = MoaProfileScreen();
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
