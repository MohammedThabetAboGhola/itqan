import 'package:flutter/material.dart';
import 'package:itqan/core/constants/manger_route.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting("ar");
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
      supportedLocales: const [Locale("ar")],
      theme: ThemeData(
          drawerTheme: const DrawerThemeData(scrimColor: Colors.transparent),
          primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.lunchScreen,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
