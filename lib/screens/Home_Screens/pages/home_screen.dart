import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_fonts.dart';
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
            child: Column(
              children: [
                DrawerItem(title: "testing", icon: Icons.date_range, routName: "routName")
                ],

        ),

      ),
    )
    );
  }
}


