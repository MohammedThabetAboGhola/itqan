import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:itqan/core/constants/manger_string.dart';

import '../../../../../core/constants/manger_fonts.dart';
import '../../../../../core/constants/manger_route.dart';
import '../../../../../utils/style/app_color.dart';
import 'dart:ui' as ui;

import '../../../../../widget/text_app_bar.dart';


class DailyLogScreenSupervisor extends StatefulWidget {
  const DailyLogScreenSupervisor({Key? key}) : super(key: key);

  @override
  State<DailyLogScreenSupervisor> createState() => _DailyLogScreenSupervisorState();
}

class _DailyLogScreenSupervisorState extends State<DailyLogScreenSupervisor> {

  late TextEditingController _nameStudentTextController;
  late TextEditingController _date;

    String dropdownValue = 'الغاشية(1)';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameStudentTextController = TextEditingController();
    _date = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameStudentTextController.dispose();
    _date.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: ui.TextDirection.rtl,
      child: Scaffold(

        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pushNamed(context, Routes.bottomNavigationBarScreenSupervisor);
            },
            icon: const Icon(Icons.arrow_back,color: Colors.white,),
          ),
          title: const TextAppBar(title: MangerString.daily,),
          centerTitle: true,
          backgroundColor: AppColor.buttonColor_1,
        ),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(

              children: [
                const Text(
                   MangerString.addSaveDaily,
                      style: TextStyle(
                     fontSize: 16,
                     color: AppColor.buttonColor_1,
                     fontFamily: MangerFonts.cairo,
                  ),
                 ),
                const SizedBox(height: 10,),
                TextField(
                  // controller: _nameStudentTextController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: MangerString.studentName,
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      color: AppColor.orange,
                      fontFamily: MangerFonts.cairo,
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 1,
                        color:AppColor.green,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                TextField(
                  controller: _date,
                  obscureText: false,
                  onTap: _showDatePicker,
                  decoration: InputDecoration(
                    labelText: MangerString.todayDate,
                    suffixIcon: const Icon(
                      Icons.calendar_month,
                      color: AppColor.buttonColor_1,
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      color: AppColor.orange,
                      fontFamily: MangerFonts.cairo,
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 1,
                        color:AppColor.green,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10,),
                const Padding(
                  padding:  EdgeInsets.only(left: 200),
                  child:  Text(
                    MangerString.save,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.buttonColor_1,
                      fontFamily: MangerFonts.cairo,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),



                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 110,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: (){},

                        style: ElevatedButton.styleFrom(

                          backgroundColor:AppColor.buttonColor_1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                width: 1,
                                color:AppColor.buttonColor_2,
                              )
                          ),
                        ),
                        child: const Text(MangerString.add,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: MangerFonts.cairo,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 50,),
                    SizedBox(
                      width: 110,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(

                          backgroundColor:Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                width: 1,
                                color:Colors.black,
                              )
                          ),
                        ),
                        child: const Text(
                          MangerString.cancle,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: MangerFonts.cairo,
                          ),
                        ),
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
  void _showDatePicker () async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101));

     if(dateTime != null){
       setState(() {
         String formattedDate = DateFormat.yMMMEd().format(dateTime);
         _date.text = formattedDate;
       });

     }
  }
}

