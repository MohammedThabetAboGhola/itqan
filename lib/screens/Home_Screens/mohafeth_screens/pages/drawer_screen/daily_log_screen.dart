import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:itqan/core/constants/manger_string.dart';
import 'package:itqan/core/model/quran.dart';

import '../../../../../core/constants/manger_fonts.dart';
import '../../../../../core/constants/manger_route.dart';
import '../../../../../utils/style/app_color.dart';
import 'dart:ui' as ui;
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import '../../../../../widget/text_app_bar.dart';

class DailyLogScreen extends StatefulWidget {
  const DailyLogScreen({Key? key}) : super(key: key);

  @override
  State<DailyLogScreen> createState() => _DailyLogScreenState();
}

class _DailyLogScreenState extends State<DailyLogScreen> {
  late TextEditingController _nameStudentTextController;
  late TextEditingController _date;
  final jobRoleDropdownCtrl = TextEditingController();

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
              Navigator.pushReplacementNamed(
                  context, Routes.bottomNavigationBarScreenMoa);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: const TextAppBar(
            title: MangerString.daily,
          ),
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
                const SizedBox(
                  height: 10,
                ),
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
                        color: AppColor.green,
                      ),
                    ),
                  ),
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 165,
                      height: 45,
                      child: CustomDropdown(
                        hintText: 'اختر السورة',
                        listItemStyle:
                            TextStyle(fontSize: 16, color: Colors.black),
                        selectedStyle:
                            TextStyle(fontSize: 16, color: Colors.black),
                        items: items,
                        hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                        controller: jobRoleDropdownCtrl,
                        excludeSelected: false,
                        borderRadius: BorderRadius.circular(10),
                        onChanged: (select) {},
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 110,
                      height: 45,
                      child: DropdownButton<String>(
                        borderRadius: BorderRadius.circular(20),
                        onChanged: (String? selectedItem) {
                          setState(() {
                            dropdownValue = selectedItem!;
                          });
                        },
                        value: dropdownValue,
                        onTap: () {},
                        icon: Icon(Icons.arrow_drop_down_circle_outlined),
                        iconSize: 30,
                        hint: Text('الغاشية'),
                        items: [
                          DropdownMenuItem<String>(
                            child: Text("الغاشية(1)"),
                            value: "one",
                          ),
                          DropdownMenuItem<String>(
                            child: Text("الغاشية(4)"),
                            value: "two",
                          ),
                        ],
                      ),
                    ),
                  ],
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 165,
                      height: 45,
                      child: DropdownButton<String>(
                        borderRadius: BorderRadius.circular(20),
                        onChanged: (String? selectedItem) {
                          setState(() {
                            dropdownValue = selectedItem!;
                          });
                        },
                        value: dropdownValue,
                        onTap: () {},
                        icon: Icon(Icons.arrow_drop_down_circle_outlined),
                        iconSize: 30,
                        hint: Text('الغاشية'),
                        items: [
                          DropdownMenuItem<String>(
                            child: Text("الغاشية(1)"),
                            value: "one",
                          ),
                          DropdownMenuItem<String>(
                            child: Text("الغاشية(4)"),
                            value: "two",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 110,
                      height: 45,
                      child: DropdownButton<String>(
                        borderRadius: BorderRadius.circular(20),
                        onChanged: (String? selectedItem) {
                          setState(() {
                            dropdownValue = selectedItem!;
                          });
                        },
                        value: dropdownValue,
                        onTap: () {},
                        icon: Icon(Icons.arrow_drop_down_circle_outlined),
                        iconSize: 30,
                        hint: Text('الغاشية'),
                        items: [
                          DropdownMenuItem<String>(
                            child: Text("الغاشية(1)"),
                            value: "one",
                          ),
                          DropdownMenuItem<String>(
                            child: Text("الغاشية(4)"),
                            value: "two",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
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
