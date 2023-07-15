import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_string.dart';

class Test2Screen extends StatefulWidget {
  const Test2Screen({Key? key}) : super(key: key);

  @override
  State<Test2Screen> createState() => _Test2ScreenState();
}

class _Test2ScreenState extends State<Test2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MangerString.test2),
      ),
    );
  }
}
