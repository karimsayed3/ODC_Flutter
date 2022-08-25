import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plants_project/presentation/screens/create_post_screen/create_post_screen.dart';
import 'package:plants_project/presentation/screens/home_layout/home_layout.dart';
import 'package:plants_project/presentation/screens/login_screen/login_signup.dart';
import 'package:plants_project/presentation/screens/profile_screen/profile_screen.dart';
import 'package:plants_project/presentation/screens/search_screen/search_screen.dart';
import 'package:plants_project/presentation/screens/splash_screen/splash_screen.dart';
import 'presentation/screens/wid/mycart_screen.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.light,

              ),
            ),
        primarySwatch: Colors.blue,
      ),
      home: const Create_Post(),
    );
  }
}

