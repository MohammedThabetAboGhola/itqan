import 'package:flutter/material.dart';
import 'package:itqan/core/constants/manger_fonts.dart';
import 'package:itqan/core/constants/manger_lists.dart';
import 'package:itqan/core/constants/manger_route.dart';
import 'package:itqan/core/constants/manger_string.dart';
import 'package:itqan/screens/Home_Screens/mohafeth_screens/pages/drawer_screen/daily_log_screen.dart';
import 'package:itqan/screens/Home_Screens/supervisor_screens/pages/drawer_screen/daily_log_screen.dart';
import 'package:itqan/utils/style/app_color.dart';
import 'package:itqan/widget/text_app_bar.dart';

class YearLogScreen extends StatefulWidget {
  const YearLogScreen({Key? key}) : super(key: key);

  @override
  State<YearLogScreen> createState() => _YearLogScreenState();
}

class _YearLogScreenState extends State<YearLogScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
       appBar: AppBar(
         leading: IconButton(
           onPressed: () {
             Navigator.pushNamed(
                 context, Routes.bottomNavigationBarScreenMoa);
           },
           icon: const Icon(
             Icons.arrow_back,
             color: Colors.white,
           ),
         ),
         title: const TextAppBar(
           title: MangerString.yearLogTitle,
         ),
         centerTitle: true,
         backgroundColor: AppColor.buttonColor_1,
       ),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [

                const SizedBox(height: 10,),

                Expanded(
                  child: ListView.builder(
                    itemCount: MangerLists.month.length,
                    itemBuilder: (context,index){
                      return Container(
                        margin: const EdgeInsets.all(10),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all()
                        ),
                        child:InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.pushNamed(
                                  context, Routes.dailyLogScreen);
                            });

                          },
                          child: ListTile(
                            leading: const Icon(Icons.calendar_month,color: AppColor.buttonColor_1,),
                            title:  Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                textAlign: TextAlign.center,
                                MangerLists.month[index],
                                style:const TextStyle(
                                  fontFamily: MangerFonts.cairo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFFC5593A),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
