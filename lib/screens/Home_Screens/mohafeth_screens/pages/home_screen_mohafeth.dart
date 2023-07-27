import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_assets.dart';
import 'package:itqan/constants/manger_fonts.dart';
import 'package:itqan/constants/manger_route.dart';
import 'package:itqan/constants/manger_string.dart';
import 'package:itqan/utils/style/app_color.dart';
import '../../../../widget/drawer_item.dart';
import '../../../../widget/text_app_bar.dart';
import '../../../../widget/user_avatar.dart';



class HomeScreenMoa extends StatefulWidget {
  const HomeScreenMoa({Key? key}) : super(key: key);

  @override
  State<HomeScreenMoa> createState() => _HomeScreenMoaState();
}

class _HomeScreenMoaState extends State<HomeScreenMoa> {
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ), 
          child: Column(
            children: [
              Container(
                color: AppColor.buttonColor_1,
                 height: 200, width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      UserAvatar(imageName: MangerAssets.person),
                      const Padding(
                        padding:  EdgeInsets.only(top: 25,right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              MangerString.welcomeHome,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: MangerFonts.cairo
                            ),),

                            Text(
                              MangerString.episodeName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: MangerFonts.cairo
                              ),),

                            Text(
                              MangerString.numberID,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: MangerFonts.cairo
                              ),),
                          ],
                        ),
                      ),
                    ],),
                ),
              ),

              const SizedBox(
                height: 25  ,
              ),

              const DrawerItem(
                title: MangerString.daily,
                icon: Icons.calendar_view_day,
                routName: Routes.dailyLogScreen,
              ),

              const DrawerItem(
                title: MangerString.monthly,
                icon: Icons.calendar_view_month,
                routName: Routes.dailyLogScreen,
              ),

              const DrawerItem(
                title: MangerString.settings,
                icon: Icons.settings,
                routName: Routes.dailyLogScreen,
              ),
              const Divider(
                height: 35,
                endIndent: 15, indent: 15,
                color:AppColor.buttonColor_1,
                thickness: 1,
              ),

              const DrawerItem(
                title: MangerString.logout,
                icon: Icons.logout,
                routName:Routes.loginScreen,
              ),

            ],
          ),

        ),


    )
    );
  }
}


