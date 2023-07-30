import 'package:flutter/material.dart';
import 'package:itqan/screens/Auth/login_screen.dart';
import 'package:itqan/screens/Auth/reset_password_screen.dart';
import 'package:itqan/screens/Home_Screens/supervisor_screens/pages/bottom_navigation_supervisor.dart';
import 'package:itqan/screens/Lunch_Screen/lunch_screen.dart';

import '../../screens/Home_Screens/mohafeth_screens/pages/add_student_screen.dart';
import '../../screens/Home_Screens/mohafeth_screens/pages/bottom_navigation_mohafeth.dart';
import '../../screens/Home_Screens/mohafeth_screens/pages/drawer_screen/daily_log_screen.dart';
import '../../screens/Home_Screens/mohafeth_screens/pages/drawer_screen/monthly_log_screen.dart';
import '../../screens/Home_Screens/mohafeth_screens/pages/home_screen_mohafeth.dart';

class Routes {
  static const String lunchScreen = '/lunch_screen';
  static const String loginScreen = '/login';
  static const String resetPasswordScreen = '/reset_password_screen';
  static const String homeScreen = '/home_screen';
  static const String bottomNavigationBarScreenMoa = '/bottom_navigation_bar_screen_moa';
  static const String bottomNavigationBarScreenSupervisor = '/bottom_navigation_bar_screen_supervisor';
  static const String addStudentScreen = '/addStudentScreen';
  static const String test1Screen = '/test1Screen';
  static const String test2Screen = '/test2Screen';
  static const String dailyLogScreen = '/dailyLogScreen';
  static const String monthlyLogScreen = '/monthlyLogScreen';


}

class RouteGenerator {
  static Route<dynamic> getRoute (RouteSettings settings){
    switch (settings.name){
      case Routes.lunchScreen : return MaterialPageRoute(builder: (_)=> const LunchScreen()) ;
      case Routes.loginScreen : return MaterialPageRoute(builder: (_)=> const LoginScreen()) ;
      case Routes.resetPasswordScreen : return MaterialPageRoute(builder: (_)=> const ResetPasswordScreen()) ;
      case Routes.homeScreen : return MaterialPageRoute(builder: (_)=> const HomeScreenMoa()) ;
      case Routes.bottomNavigationBarScreenMoa : return MaterialPageRoute(builder: (_)=> const BottomNavigationBarMoaScreen());
      case Routes.bottomNavigationBarScreenSupervisor : return MaterialPageRoute(builder: (_)=> const BottomNavigationBarSupervisorScreen());
      case Routes.addStudentScreen : return MaterialPageRoute(builder: (_)=> const AddStudentScreen()) ;
      case Routes.dailyLogScreen : return MaterialPageRoute(builder: (_)=> const DailyLogScreen()) ;
      case Routes.monthlyLogScreen : return MaterialPageRoute(builder: (_)=> const MonthlyLogScreen()) ;
      default : return unDefinedRoute();

    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('ManagerStrings.noRouteFound'),
        ),
        body: Center(
          child: Text('ManagerStrings.noRouteFound'),
        ),
      ),
    );
  }
}

