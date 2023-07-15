import 'package:flutter/material.dart';
import 'package:itqan/constants/manger_route.dart';
import 'package:itqan/utils/style/app_color.dart';


void main (){runApp(MyApp());}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(scrimColor: Colors.transparent),
        primarySwatch: Colors.orange
      ),

      debugShowCheckedModeBanner: false,
      initialRoute: Routes.lunchScreen,
      onGenerateRoute: RouteGenerator.getRoute ,
    );
  }
}
