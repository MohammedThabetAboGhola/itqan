import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_route.dart';


void main (){runApp(MyApp());}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.lunchScreen,
      onGenerateRoute: RouteGenerator.getRoute ,
    );
  }
}
