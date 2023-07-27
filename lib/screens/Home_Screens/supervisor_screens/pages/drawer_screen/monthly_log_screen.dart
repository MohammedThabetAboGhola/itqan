import 'package:flutter/material.dart';

import '../../../../../constants/manger_string.dart';



class MonthlyLogScreen extends StatefulWidget {
  const MonthlyLogScreen({Key? key}) : super(key: key);

  @override
  State<MonthlyLogScreen> createState() => _MonthlyLogScreenState();
}

class _MonthlyLogScreenState extends State<MonthlyLogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MangerString.daily),
      ),
    );
  }
}
