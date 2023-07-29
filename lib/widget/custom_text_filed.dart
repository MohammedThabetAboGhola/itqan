import 'package:flutter/material.dart';

import '../core/constants/manger_fonts.dart';
import '../utils/style/app_color.dart';


class CustomTextField extends StatelessWidget {

  final String hint ;
  final TextEditingController textEditingController;
  final bool obscureText;


  const CustomTextField({
    super.key,
    required this.hint,
    required this.textEditingController,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: hint,
        labelStyle: TextStyle(
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
    );
  }
}