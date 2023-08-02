import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/constants/manger_fonts.dart';


extension HelperContextExtenssion on BuildContext {


  void showMessage(String message, {bool error = false}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(
        message,
        style:  const TextStyle(
          color: Colors.white,
          fontFamily: MangerFonts.cairo,
        ),
      ),
      backgroundColor: error ? Colors.red : Colors.green,
      margin: const EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
    ));
  }

}

