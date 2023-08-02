import 'package:flutter/material.dart';
import 'package:itqan/core/constants/manger_fonts.dart';
import 'package:itqan/utils/style/app_color.dart';

class MyCustomTextFiled extends StatelessWidget {
  const MyCustomTextFiled({
    super.key, required this.labelText, required this.textInputType,
  });

  final String labelText;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: _nameStudentTextController,
      obscureText: false,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: labelText,
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
    );
  }
}