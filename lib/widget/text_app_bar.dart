
import 'package:flutter/material.dart';

import '../core/constants/manger_fonts.dart';
class TextAppBar extends StatelessWidget {
  final String title;
  const TextAppBar({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: MangerFonts.cairo,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
    );
  }
}