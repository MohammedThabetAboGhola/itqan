import 'package:flutter/material.dart';
import 'package:itqan/screens/Auth/login_screen.dart';
import 'package:itqan/screens/Auth/reset_password_screen.dart';
import 'package:itqan/screens/Home_Screens/pages/bottom_navigation_bar.dart';
import 'package:itqan/screens/Home_Screens/pages/home_screen.dart';
import 'package:itqan/screens/Home_Screens/purchase_screens/add_student_screen.dart';
import 'package:itqan/screens/Lunch_Screen/lunch_screen.dart';

class Routes {
  static const String lunchScreen = '/lunch_screen';
  static const String loginScreen = '/login';
  static const String resetPasswordScreen = '/reset_password_screen';
  static const String homeScreen = '/home_screen';
  static const String bottomNavigationBarScreen = '/bottom_navigation_bar_screen';
  static const String addStudentScreen = '/addStudentScreen';


}

class RouteGenerator {
  static Route<dynamic> getRoute (RouteSettings settings){
    switch (settings.name){
      case Routes.lunchScreen : return MaterialPageRoute(builder: (_)=> const LunchScreen()) ;
      case Routes.loginScreen : return MaterialPageRoute(builder: (_)=> const LoginScreen()) ;
      case Routes.resetPasswordScreen : return MaterialPageRoute(builder: (_)=> const ResetPasswordScreen()) ;
      case Routes.homeScreen : return MaterialPageRoute(builder: (_)=> const HomeScreen()) ;
      case Routes.bottomNavigationBarScreen : return MaterialPageRoute(builder: (_)=> const BottomNavigationBarScreen()) ;
      case Routes.addStudentScreen : return MaterialPageRoute(builder: (_)=> const AddStudentScreen()) ;
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

