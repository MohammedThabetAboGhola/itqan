import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_fonts.dart';
import 'package:itqan/constants/manger_string.dart';
import 'package:itqan/utils/helpers/helper.dart';
import 'package:itqan/utils/style/app_color.dart';

import '../../constants/manger_route.dart';


class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  late TextEditingController _identifyTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _identifyTextController = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _identifyTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.buttonColor_1,
          centerTitle: true,
          leading: InkWell(
              child: const Icon(Icons.arrow_back),
              onTap: (){
                Navigator.pushReplacementNamed(context, Routes.loginScreen);
              },
          ),
          title: Text(
            MangerString.resetPassword,
            style: TextStyle(
              fontFamily: MangerFonts.cairo
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 100),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    MangerString.forgetPassword,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColor.primary,
                      fontFamily: MangerFonts.cairo
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  child: TextField(
                    controller: _identifyTextController,
                    keyboardType: TextInputType.emailAddress,
                    minLines: null,
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(
                      labelText: MangerString.identifyNumber,
                      labelStyle:TextStyle(
                        fontSize: 16,
                        color: AppColor.orange,
                        fontFamily: MangerFonts.cairo
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
                          color: Color(0XFF097D38),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: (){
                    _performLogin();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.buttonColor_1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          width: 1,
                          color: Color(0XFF707070),
                        )
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      MangerString.resetPassword,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: MangerFonts.cairo
                      ),
                    ),
                  ),
                ),
              ],
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
    if (_identifyTextController.text.isNotEmpty) {

      return true;
    }
    context.showMessage(MangerString.enterRequiredData, error: true);
    return false;
  }

  Future<void> _login() async {

  }

}
