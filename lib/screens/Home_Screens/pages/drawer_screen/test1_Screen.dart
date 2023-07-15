import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_string.dart';

class Test1Screen extends StatefulWidget {
  const Test1Screen({Key? key}) : super(key: key);

  @override
  State<Test1Screen> createState() => _Test1ScreenState();
}

class _Test1ScreenState extends State<Test1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MangerString.test1),
      ),
    );
  }
}
