import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:itqan/core/constants/manger_lists.dart';
import 'package:itqan/core/constants/manger_string.dart';
import 'package:itqan/core/model/quran.dart';
import 'package:itqan/widget/my_custom_dropdown.dart';
import 'package:itqan/widget/my_custom_text_filed.dart';

import '../../../../core/constants/manger_fonts.dart';
import '../../../../core/constants/manger_route.dart';
import '../../../../utils/style/app_color.dart';
import 'dart:ui' as ui;
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import '../../../../widget/text_app_bar.dart';

class AddDailyMemorizationStudentScreen extends StatefulWidget {
  const AddDailyMemorizationStudentScreen({Key? key}) : super(key: key);

  @override
  State<AddDailyMemorizationStudentScreen> createState() => _AddDailyMemorizationStudentScreenState();
}

class _AddDailyMemorizationStudentScreenState extends State<AddDailyMemorizationStudentScreen> {
  late TextEditingController _nameStudentTextController;
  late TextEditingController _date;
  final jobRoleDropdownCtrl = TextEditingController();
  final chooseSurahReviewController = TextEditingController();
  final chooseSurahSaveController = TextEditingController();

  String dropdownValue = 'one';
  List<Quran> quran = [];
  List<String> items = [];

  Quran quranJson = Quran();

  Future<List<Quran>> readData() async {
    final response = await rootBundle.loadString("assets/json/quran.json");
    final quran = jsonDecode(response) as List;
    return quran.map((e) => Quran.fromJson(e)).toList();
  }

  void printData() async {
    quran = await readData();
    for (int i = 0; i < quran.length; i++) {
      setState(() {
        items.add(quran[i].suraNameAr!);
      });
    }
  }

  @override
  void initState() {
    printData();
    super.initState();
    _nameStudentTextController = TextEditingController();
    _date = TextEditingController();
  }

  @override
  void dispose() {
    _nameStudentTextController.dispose();
    _date.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: ui.TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
            title: MangerString.addSaveDaily,
          ),
          centerTitle: true,
          backgroundColor: AppColor.buttonColor_1,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const MyCustomTextFiled(
                  // controller: _nameStudentTextController,
                  labelText: MangerString.studentName,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 20,
                ),
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
                        color: AppColor.green,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      MangerString.save,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColor.buttonColor_1,
                        fontFamily: MangerFonts.cairo,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10, ),


                SizedBox(
                  height: 50,
                  child: CustomDropdown.search(
                    fillColor: Colors.white10,
                    items: MangerLists.surahs,
                    controller: chooseSurahSaveController,
                    hintText: MangerString.chooseSurah,
                    listItemStyle:
                    const TextStyle(fontSize: 16, color: AppColor.orange,fontFamily: MangerFonts.cairo,),
                    selectedStyle:
                    const TextStyle(fontSize: 16, color: Colors.black,fontFamily: MangerFonts.cairo,),
                    hintStyle:
                    const TextStyle(fontSize: 16, color: AppColor.orange,fontFamily: MangerFonts.cairo,),
                    excludeSelected: false,
                    borderRadius: BorderRadius.circular(20),
                    onChanged: (select) {},
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 175,
                      height: 45,
                      child: MyCustomTextFiled(
                        // controller: _nameStudentTextController,
                        textInputType:TextInputType.phone ,
                        labelText: MangerString.from,
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 170,
                      height: 45,
                      child: MyCustomTextFiled(
                        // controller: _nameStudentTextController,
                        textInputType: TextInputType.phone,
                        labelText: MangerString.to,

                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10,),

                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      MangerString.review,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColor.buttonColor_1,
                        fontFamily: MangerFonts.cairo,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                SizedBox(
                  height: 50,
                  child: CustomDropdown.search(
                    fillColor: Colors.white10,
                    items: MangerLists.surahs,
                    controller: chooseSurahReviewController,
                    hintText: MangerString.chooseSurah,
                    listItemStyle:
                    const TextStyle(fontSize: 16, color: AppColor.orange,fontFamily: MangerFonts.cairo,),
                    selectedStyle:
                    const TextStyle(fontSize: 16, color: Colors.black,fontFamily: MangerFonts.cairo,),
                    hintStyle:
                    const TextStyle(fontSize: 16, color: AppColor.orange,fontFamily: MangerFonts.cairo,),
                    excludeSelected: false,
                    borderRadius: BorderRadius.circular(20),
                    onChanged: (select) {},
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),

                const SizedBox(height: 10,),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 175,
                      height: 45,
                      child: MyCustomTextFiled(
                        // controller: _nameStudentTextController,
                        textInputType:TextInputType.phone ,
                        labelText: MangerString.from,
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 170,
                      height: 45,
                      child: MyCustomTextFiled(
                        // controller: _nameStudentTextController,
                        textInputType: TextInputType.phone,
                        labelText: MangerString.to,

                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 110,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.buttonColor_1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                width: 1,
                                color: AppColor.buttonColor_2,
                              )),
                        ),
                        child: const Text(
                          MangerString.add,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: MangerFonts.cairo,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 110,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                width: 1,
                                color: Colors.black,
                              )),
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

  void _showDatePicker() async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        locale: Locale("ar"),
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101));

    if (dateTime != null) {
      setState(() {
        String formattedDate = DateFormat("yMMMEd", "ar").format(dateTime);
        _date.text = formattedDate;
      });
    }
  }


}
