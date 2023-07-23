import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_fonts.dart';
import 'package:itqan/constants/manger_route.dart';
import 'package:itqan/constants/manger_string.dart';
import 'package:itqan/utils/style/app_color.dart';

import '../../../constants/manger_assets.dart';
import '../../../widget/drawer_item.dart';
import '../../../widget/text_app_bar.dart';
import '../../../widget/user_avatar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const TextAppBar(title: MangerString.homeScreenText),
          centerTitle: true,
          backgroundColor: AppColor.buttonColor_1,

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'أهلا بك :',
                          style: TextStyle(
                            fontFamily: MangerFonts.cairo,
                            color: Color(0XFF404040),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'محمد أبو شملة',
                          style: TextStyle(
                            fontFamily: MangerFonts.cairo,
                            color: Color(0XFFD8A307),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'حلقة كعب بن علي',
                      style: TextStyle(
                        fontFamily: MangerFonts.cairo,
                        color: Color(0XFF864330),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0XFF707070)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: ListTile(
                              leading: Icon(Icons.person_outline),
                              title: Text(
                                'الطالب/ محمد جمال ابو عيشة',
                                style:TextStyle(
                                  fontFamily: MangerFonts.cairo,
                                  fontSize: 18,
                                  color: Color(0XFFC5593A),
                                ),
                              ),
                              trailing: PopupMenuButton<int>(
                                onSelected: (int selectedItem){
                                },
                                icon: Icon(Icons.more_vert),
                                itemBuilder: (context){
                                  return [
                                    PopupMenuItem(
                                      child: Text(
                                        'حذف',
                                        style:TextStyle(
                                          fontSize: 16,
                                          fontFamily: MangerFonts.cairo,
                                        ),
                                      ),
                                      onTap: (){},
                                    ),
                                    PopupMenuDivider(),
                                    PopupMenuItem(
                                      child: Text(
                                        'تعديل',
                                        style: TextStyle(
                                          fontFamily: MangerFonts.cairo,
                                          fontSize: 16,
                                        ),
                                      ),
                                      onTap: (){},
                                    ),
                                  ];
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),

        drawer: Drawer(
          width: 275,
          backgroundColor: Colors.white70,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(40)),
          ),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color(0x3D000000),
                      spreadRadius: 30,
                      blurRadius: 20)
                ]),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, Routes.homeScreen);
                      },
                      child: const Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color:  AppColor.buttonColor_1,
                            size: 25,
                          ),
                          SizedBox(
                            width: 56,
                          ),
                          Text(
                            MangerString.settings,
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color:  AppColor.buttonColor_1,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children:  [
                        UserAvatar(imageName: MangerAssets.person),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          '\t اهلا وسهلا\n محمد ابوشملة ',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: AppColor.buttonColor_1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    const DrawerItem(
                      title: MangerString.daily,
                      icon: Icons.calendar_view_day,
                      routName: Routes.dailyLogScreen,
                    ),
                    const DrawerItem(
                      title: MangerString.monthly,
                      icon: Icons.calendar_month,
                      routName: Routes.monthlyLogScreen,
                    ),

                    const DrawerItem(
                      title: MangerString.support,
                      icon: Icons.support_agent,
                      routName: "MyConstants.HOME_SCREEN",
                    ),

                    const Divider(
                      height: 35,
                      color:AppColor.buttonColor_1,
                      thickness: 1,
                    ),
                  ]),
                  const DrawerItem(
                    title: MangerString.logout,
                    icon: Icons.logout,
                    routName: "MyConstants.LOGIN_SCREEN",
                  ),
                ],
              ),
            ),
          ),
        ),
    )
    );
  }
}


