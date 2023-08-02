import 'package:flutter/material.dart';
import 'package:itqan/core/constants/manger_route.dart';
import 'package:itqan/core/constants/manger_string.dart';
import 'package:itqan/utils/style/app_color.dart';
import 'package:itqan/widget/text_app_bar.dart';

class DailyLogScreen extends StatefulWidget {


  const DailyLogScreen(
      { super.key,
      });



  @override
  State<DailyLogScreen> createState() => _DailyLogScreenState();
}

class _DailyLogScreenState extends State<DailyLogScreen> {
  @override
  Widget build(BuildContext context) {

    TableRow tableRow = const TableRow(
        children: <Widget> [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(MangerString.day),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(MangerString.date),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(MangerString.save),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(MangerString.review),
          ),

        ]
    );

    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, Routes.yearLogScreen);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            title: const TextAppBar(
              title: MangerString.detailsEpisode,
            ),
            centerTitle: true,
            backgroundColor: AppColor.buttonColor_1,
          ),

          body: Center(
            child: Table(
              border: TableBorder.all(),
              defaultColumnWidth: FixedColumnWidth(85.0),
              children: <TableRow>[
                tableRow,
                tableRow,
                tableRow,
                tableRow,
                tableRow,
                tableRow,
                tableRow,
                tableRow,
              ],
            ),
          ),

        ));
  }
}
