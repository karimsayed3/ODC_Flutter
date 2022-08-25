import 'dart:async';
import 'package:flutter/material.dart';
import 'package:plants_project/presentation/screens/login_screen/login_signup.dart';
import 'package:plants_project/presentation/widgets/splash_screen_icon_widget.dart';
import 'package:plants_project/utils/colors.dart';
import 'package:plants_project/utils/dimantions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  int splashSecondsDuration = 3 ;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: splashSecondsDuration),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login_Signup()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.BACKGROUND_COLOR,
          borderRadius: BorderRadius.circular(Dimantions.height5),
        ),
        child: Center(
          child: SplashIconWithText(),
        ),
      ),
    );
  }
}

