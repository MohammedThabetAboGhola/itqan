import 'package:flutter/material.dart';

import '../core/constants/manger_fonts.dart';
import '../utils/style/app_color.dart';


class CustomElevatedButton extends StatelessWidget {
  final String textButton;
  final Future function ;

  const CustomElevatedButton({
    super.key, required this.textButton, required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        function;
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(
          textButton,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: MangerFonts.cairo
          ),
        ),
      ),
    );
  }
}