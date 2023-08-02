import 'package:flutter/material.dart';
import 'package:itqan/core/constants/manger_route.dart';
import 'package:itqan/utils/style/app_color.dart';
import 'package:itqan/widget/text_app_bar.dart';

import '../../../../../core/constants/manger_string.dart';



class MonthlyLogScreen extends StatefulWidget {
  const MonthlyLogScreen({Key? key}) : super(key: key);

  @override
  State<MonthlyLogScreen> createState() => _MonthlyLogScreenState();
}

class _MonthlyLogScreenState extends State<MonthlyLogScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(
                  context, Routes.bottomNavigationBarScreenMoa);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: const TextAppBar(
            title: MangerString.monthlyLogTitle,
          ),
          centerTitle: true,
          backgroundColor: AppColor.buttonColor_1,
        ),

      ),
    );
  }
}
