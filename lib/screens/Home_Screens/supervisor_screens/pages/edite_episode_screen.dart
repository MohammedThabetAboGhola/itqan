import 'package:flutter/material.dart';
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

class EditeEpisodeScreen extends StatefulWidget {
  const EditeEpisodeScreen({Key? key}) : super(key: key);

  @override
  State<EditeEpisodeScreen> createState() => _EditeEpisodeScreenState();
}

class _EditeEpisodeScreenState extends State<EditeEpisodeScreen> {
  late TextEditingController _nameStudentTextController;
  late TextEditingController _startSaveTextController;
  late TextEditingController _dateStartTextController;
  late TextEditingController _date;
  final cityController = TextEditingController();


  final moController = TextEditingController();
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
          title: const TextAppBar(title: MangerString.editeEpisodeTitle),
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
                        labelText: MangerString.nameEpisode,
                        textInputType: TextInputType.text ),
                  ),
                  const SizedBox(height: 10,),

                  const SizedBox(
                    height: 45,
                    child: MyCustomTextFiled(
                        labelText: MangerString.numberOfStudent,
                        textInputType: TextInputType.text ),
                  ),

                  const SizedBox(height: 10,),

                  const SizedBox(
                    height: 45,
                    child: MyCustomTextFiled(
                        labelText: MangerString.rate,
                        textInputType: TextInputType.text ),
                  ),

                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 50,
                    child: MyCustomDropdown(
                      hintText: MangerString.city,
                      controller: cityController,
                      listItem: MangerLists.city,
                    ),
                  ),

                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 50,
                    child: MyCustomDropdown(
                      hintText: MangerString.mo,
                      controller: moController,
                      listItem: MangerLists.names,
                    ),
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
}
