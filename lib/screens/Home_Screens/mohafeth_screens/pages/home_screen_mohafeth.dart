import 'package:flutter/material.dart';
import 'package:itqan/core/constants/manger_assets.dart';
import 'package:itqan/core/constants/manger_fonts.dart';
import 'package:itqan/core/constants/manger_route.dart';
import 'package:itqan/core/constants/manger_string.dart';
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
  late TextEditingController _date;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            iconTheme:const IconThemeData(color: Colors.white),
            title: const TextAppBar(title: MangerString.homeScreenText),
            centerTitle: true,
            backgroundColor: AppColor.buttonColor_1,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
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
                      itemBuilder: (context, index) {
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
                                onTap: (){
                                  Navigator.pushNamed(
                                      context, Routes.addDailyMemorizationStudentScreen);
                                },
                                leading: const Icon(Icons.person),
                                title: const Text(
                                   MangerString.nameStudent,
                                  style:TextStyle(
                                    fontFamily: MangerFonts.cairo,
                                    fontSize: 18,
                                    color: Color(0XFFC5593A),
                                  ),
                                ),
                                trailing: PopupMenuButton<int>(
                                  onSelected: (int selectedItem){
                                    setState(() {
                                      onSelected(selectedItem);
                                    });
                                  },
                                  icon: const Icon(Icons.more_vert),
                                  itemBuilder: (context){
                                    return [
                                      const PopupMenuItem(
                                        value: 0,
                                        child:  Text(
                                          MangerString.edite,
                                          style: TextStyle(
                                            fontFamily: MangerFonts.cairo,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      const PopupMenuDivider(),
                                      const PopupMenuItem(
                                        value : 1,
                                        child:  Text(
                                          MangerString.yearLogTitle,
                                          style:TextStyle(
                                            fontSize: 16,
                                            fontFamily: MangerFonts.cairo,
                                          ),
                                        ),
                                      ),
                                      const PopupMenuDivider(),
                                      const PopupMenuItem(
                                        value : 2,
                                        child:  Text(
                                          MangerString.remove,
                                          style:TextStyle(
                                            fontSize: 16,
                                            fontFamily: MangerFonts.cairo,
                                          ),
                                        ),
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  color: AppColor.buttonColor_1,
                  height: 200,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        UserAvatar(imageName: MangerAssets.person),
                        const Padding(
                          padding: EdgeInsets.only(top: 25, right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                MangerString.welcomeHome,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: MangerFonts.cairo),
                              ),
                              Text(
                                MangerString.episodeName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: MangerFonts.cairo),
                              ),
                              Text(
                                MangerString.numberID,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: MangerFonts.cairo),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                const DrawerItem(
                  title: MangerString.logout,
                  icon: Icons.logout,
                  routName: Routes.loginScreen,
                ),

              ],
            ),
          ),
        ));
  }
  void onSelected (select){
    setState(() {
      switch(select){
        case 0 :
          Navigator.pushNamed(context, Routes.editeStudentScreen);
          break;


        case 1 :
          Navigator.pushNamed(context, Routes.yearLogScreen);
          break;

        case 2 :
          showAlertDialog(context);
          break;
      }
    });
  }


  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: const Text(MangerString.yes,style: TextStyle(
          fontFamily: MangerFonts.cairo,
          color: AppColor.buttonColor_1,
          fontSize: 18
      ),),
      onPressed: () {

      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Directionality(
        textDirection: TextDirection.rtl,
        child: Text(
          MangerString.removeStudent,style: TextStyle(
            fontFamily: MangerFonts.cairo,
            color: AppColor.buttonColor_1,
            fontSize: 18
        ),),
      ),
      content: const Directionality(
        textDirection: TextDirection.rtl,
        child:  Text(
          MangerString.massRemoveStudent,
          style: TextStyle(
              fontFamily: MangerFonts.cairo,
              color: Colors.black,
              fontSize: 16
          ),
        ),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

