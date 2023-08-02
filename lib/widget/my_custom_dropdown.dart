import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:itqan/core/constants/manger_fonts.dart';
import 'package:itqan/utils/style/app_color.dart';

class MyCustomDropdown extends StatelessWidget {
  const MyCustomDropdown({
    super.key,
    required this.controller, required this.listItem, required this.hintText,
  });

  final TextEditingController controller;
  final List<String> listItem;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return CustomDropdown(
      fillColor: Colors.white10,
      hintText: hintText,
      listItemStyle:
      const TextStyle(fontSize: 16, color: AppColor.orange,fontFamily: MangerFonts.cairo,),
      selectedStyle:
      const TextStyle(fontSize: 16, color: Colors.black,fontFamily: MangerFonts.cairo,),
      items: listItem,
      hintStyle:
      const TextStyle(fontSize: 16, color: AppColor.orange,fontFamily: MangerFonts.cairo,),
      controller: controller,
      excludeSelected: false,
      borderRadius: BorderRadius.circular(20),
      onChanged: (select) {},
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
    );
  }
}