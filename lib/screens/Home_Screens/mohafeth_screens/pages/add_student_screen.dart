import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_assets.dart';
import '../../../../constants/manger_fonts.dart';
import '../../../../constants/manger_route.dart';
import '../../../../constants/manger_string.dart';
import '../../../../utils/style/app_color.dart';
import '../../../../widget/text_app_bar.dart';


class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({Key? key}) : super(key: key);

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {

  late TextEditingController _nameStudentTextController;
  late TextEditingController _startSaveTextController;
  late TextEditingController _dateStartTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _nameStudentTextController = TextEditingController();
    _startSaveTextController = TextEditingController();
    _dateStartTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameStudentTextController.dispose();
    _startSaveTextController.dispose();
    _dateStartTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, Routes.bottomNavigationBarScreenMoa);
            },
            icon: const Icon(Icons.arrow_back,color: Colors.white,),
          ),
          title: const TextAppBar(title: MangerString.titleAddScreen),
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
                    backgroundImage: AssetImage(MangerAssets.student),
                  ),
                  const SizedBox(height: 20,),

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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 165,
                        height: 45,
                        child:TextField(
                          // controller: _nameStudentTextController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: MangerString.identifyNumber,
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
                      ),

                      const SizedBox(width: 20,),
                      SizedBox(
                        width: 165,
                        height: 45,
                        child: TextField(
                          // controller: _nameStudentTextController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: MangerString.phoneNumber,
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
                      ),
                    ],
                  ),

                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 165,
                        height: 45,
                        child:TextField(
                          // controller: _nameStudentTextController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: MangerString.dateStart,
                            labelStyle: const TextStyle(
                              fontSize: 16,
                              color: AppColor.orange,
                              fontFamily: MangerFonts.cairo,
                            ),

                            suffixIcon: InkWell(
                              child: Icon(Icons.date_range,color: AppColor.orange,),
                              onTap: (){},
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
                      ),

                      const SizedBox(width: 20,),
                      SizedBox(
                        width: 165,
                        height: 45,
                        child: TextField(
                          // controller: _nameStudentTextController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: MangerString.city,
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
                      ),
                    ],
                  ),

                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 165,
                        height: 45,
                        child:TextField(
                          // controller: _nameStudentTextController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: MangerString.theWorkOfTheGuardian,
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
                      ),

                      const SizedBox(width: 20,),
                      SizedBox(
                        width: 165,
                        height: 45,
                        child: TextField(
                          // controller: _nameStudentTextController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: MangerString.saveAmount,
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
                      ),
                    ],
                  ),

                  const SizedBox(height: 20,),


                  TextField(
                    // controller: _nameStudentTextController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: MangerString.talent,
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 165,
                        height: 45,
                        child:TextField(
                          // controller: _nameStudentTextController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: MangerString.theWorkOfTheGuardian,
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
                      ),

                      const SizedBox(width: 20,),
                      SizedBox(
                        width: 165,
                        height: 45,
                        child: TextField(
                          // controller: _nameStudentTextController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: MangerString.saveAmount,
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
                      ),
                    ],
                  ),

                  const SizedBox(height: 20,),




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
      ),
    );
  }
}
