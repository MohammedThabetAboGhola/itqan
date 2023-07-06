import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_fonts.dart';
import 'package:itqan/constants/manger_assets.dart';
import 'package:itqan/constants/manger_string.dart';
import 'package:itqan/utils/helpers/helper.dart';
import 'package:itqan/utils/style/app_color.dart';

import '../../constants/manger_route.dart';
import '../../widget/custom_text_filed.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

   late TextEditingController _identifyTextController;
   late TextEditingController _passwordTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _identifyTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _identifyTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    MangerAssets.logo,
                    height: 300,
                    width: 300,
                  ),

                  const Text(
                    MangerString.textLogin,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primary,
                      fontFamily: MangerFonts.cairo,
                    ),
                  ),

                  const SizedBox(height: 20,),

                  Column(
                    children: [
                      CustomTextField(
                        hint: MangerString.identifyNumber,
                        textEditingController: _identifyTextController,
                        obscureText: false,
                      ),

                      const SizedBox(height: 20,),

                      CustomTextField(
                          hint: MangerString.password,
                          textEditingController: _passwordTextController,
                          obscureText: true),

                      const SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: InkWell(
                            onTap: (){
                              Navigator.pushReplacementNamed(context, Routes.resetPasswordScreen);
                            },
                            child: const Text(
                              MangerString.forgetPassword,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MangerFonts.cairo,
                                color: AppColor.black,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20,),

                      Padding(
                        padding: const EdgeInsets.only(right: 70,left: 70),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){
                              _performLogin();
                            },
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
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                MangerString.textLogin,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: MangerFonts.cairo
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 80,)

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

   Future<void> _performLogin() async {
     if (_checkData()) {
       await _login();
     }
   }

   bool _checkData() {
     if (_identifyTextController.text.isNotEmpty &&
         _passwordTextController.text.isNotEmpty) {

       context.showMessage(MangerString.loginSuccessfully, error: false);
       return true;
     }
     context.showMessage(MangerString.enterRequiredData, error: true);

     return false;
   }

   Future<void> _login() async {

     Navigator.pushReplacementNamed(context, Routes.bottomNavigationBarScreen);

   }



}






