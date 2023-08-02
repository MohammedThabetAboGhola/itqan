import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:itqan/core/constants/manger_assets.dart';
import 'package:itqan/core/constants/manger_lists.dart';
import 'package:itqan/widget/my_custom_dropdown.dart';
import 'package:itqan/widget/my_custom_text_filed.dart';
import '../../../../core/constants/manger_fonts.dart';
import '../../../../core/constants/manger_route.dart';
import '../../../../core/constants/manger_string.dart';
import '../../../../utils/style/app_color.dart';
import '../../../../widget/text_app_bar.dart';
import 'dart:ui' as ui;
import 'package:animated_custom_dropdown/custom_dropdown.dart';


class AddEpisodeAndMoScreen extends StatefulWidget {
  const AddEpisodeAndMoScreen({Key? key}) : super(key: key);

  @override
  State<AddEpisodeAndMoScreen> createState() => _AddEpisodeAndMoScreenState();
}

class _AddEpisodeAndMoScreenState extends State<AddEpisodeAndMoScreen> {

  late TextEditingController _nameStudentTextController;
  late TextEditingController _startSaveTextController;
  late TextEditingController _dateStartTextController;
  late TextEditingController _date;
  final cityController = TextEditingController();
  final genderController = TextEditingController();
  final socialLevelController = TextEditingController();
  final academicLeveController = TextEditingController();
  final supervisorController = TextEditingController();
  final maritalStatusController = TextEditingController();
  final saveAmountController = TextEditingController();
  final tajweedController = TextEditingController();
  final yearsOfExperienceController = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _nameStudentTextController = TextEditingController();
    _startSaveTextController = TextEditingController();
    _dateStartTextController = TextEditingController();
    _date = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameStudentTextController.dispose();
    _startSaveTextController.dispose();
    _dateStartTextController.dispose();
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
            onPressed: () {
              Navigator.pushNamed(
                  context, Routes.bottomNavigationBarScreenSupervisor);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: const TextAppBar(title: MangerString.titleAddSupervisor),
          centerTitle: true,
          backgroundColor: AppColor.buttonColor_1,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white10,
                    radius: 70,
                    backgroundImage: AssetImage(MangerAssets.episode),
                  ),

                  const SizedBox(height: 20,),

                  const SizedBox(
                    height: 45,
                    child: MyCustomTextFiled(
                      labelText: MangerString.nameMo,
                        textInputType: TextInputType.text
                    ),
                  ),
                  const SizedBox(height: 10,),

                  const SizedBox(
                    height: 45,
                    child: MyCustomTextFiled(
                        labelText: MangerString.nameEpisode,
                        textInputType: TextInputType.text ),
                  ),
                  const SizedBox(height: 10,),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 175,
                        height: 45,
                        child: MyCustomTextFiled(
                          textInputType: TextInputType.phone,
                            labelText: MangerString.identifyNumber,
                          ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 170,
                        height: 45,
                        child: MyCustomTextFiled(
                          // controller: _nameStudentTextController,
                          textInputType: TextInputType.phone,
                          labelText: MangerString.phoneNumber,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 50,
                    child: TextField(
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
                  ),

                  const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 175,
                        height: 45,
                        child: MyCustomDropdown(
                            hintText: MangerString.city,
                            listItem: MangerLists.city,
                            controller: cityController,
                        ),
                      ),
                      const Spacer(),
                      const SizedBox(
                        width: 170,
                        height: 45,
                        child: MyCustomTextFiled(
                            labelText: MangerString.center,
                            textInputType: TextInputType.text
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 50,
                    child: MyCustomDropdown(
                      hintText: MangerString.supervisor1,
                      controller: supervisorController,
                      listItem: MangerLists.socialLevelList,
                    ),
                  ),

                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 50,
                    child: MyCustomDropdown(
                      hintText: MangerString.socialLevel,
                      controller: socialLevelController,
                      listItem: MangerLists.socialLevelList,
                    ),
                  ),

                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 50,
                    child: MyCustomDropdown(
                      hintText: MangerString.academicLevel,
                      controller: academicLeveController,
                      listItem: MangerLists.academicLevelList,
                    ),
                  ),

                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 50,
                    child: MyCustomDropdown(
                      hintText: MangerString.maritalStatus,
                      controller: maritalStatusController,
                      listItem: MangerLists.maritalStatusList,
                    ),
                  ),

                  const SizedBox(height: 10,),


                  SizedBox(
                    height: 50,
                    child: MyCustomDropdown(
                      hintText: MangerString.yearsOfExperience,
                      controller: yearsOfExperienceController,
                      listItem: MangerLists.socialLevelList,
                    ),
                  ),

                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 50,
                    child: MyCustomDropdown(
                      hintText: MangerString.tajweed,
                      controller: tajweedController,
                      listItem: MangerLists.tajweedList,
                    ),
                  ),

                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 50,
                    child: MyCustomDropdown(
                      hintText: MangerString.saveAmount1,
                      controller: saveAmountController,
                      listItem: MangerLists.partsList,
                    ),
                  ),

                  const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 175,
                        height: 45,
                        child:  MyCustomTextFiled(
                          // controller: _nameStudentTextController,
                            labelText: MangerString.work,
                            textInputType: TextInputType.text,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 170,
                        height: 45,
                        child:MyCustomDropdown(
                          hintText: MangerString.gender,
                          controller: genderController,
                          listItem: MangerLists.gender,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10,),

                  const SizedBox(
                    height: 20,
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




