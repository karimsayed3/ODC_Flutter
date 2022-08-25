import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants_project/presentation/screens/home_screen/home_screen.dart';
import 'package:plants_project/presentation/screens/notification_screen/notification_screen.dart';
import 'package:plants_project/presentation/screens/wid/mycart_screen.dart';
import 'package:plants_project/presentation/widgets/splash_screen_icon_widget.dart';
import 'package:plants_project/utils/dimantions.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeLayout> {
  int selectedButton = 2;
  Color iconColor = Colors.black;
  List<int> colordIcon = [0, 1, 2, 3, 4];
  List<Widget> bodyWidgeet = [Container(), Container(), HomePage(), NotificationPage(), Container()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: bodyWidgeet[selectedButton],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CurvedNavigationBar(
            onTap: (index) {
              setState(() {
                selectedButton = index;
              });
            },
            items: [
              Container(
                width: 25,
                height: 25,
                child: SvgPicture.asset(
                  'assets/images/leave1.svg',
                  color: selectedButton == colordIcon[0]
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              SvgPicture.asset('assets/images/qr2 .svg',
                  color: selectedButton == colordIcon[1]
                      ? Colors.white
                      : Colors.black),
              Icon(
                Icons.home_outlined,
                color: selectedButton == colordIcon[2]
                    ? Colors.white
                    : Colors.black,
              ),
              Icon(Icons.notifications,
                  color: selectedButton == colordIcon[3]
                      ? Colors.white
                      : Colors.black),
              Icon(Icons.person,
                  color: selectedButton == colordIcon[4]
                      ? Colors.white
                      : Colors.black),
            ],
            backgroundColor: Colors.transparent,
            height: 60,
            index: selectedButton,
            // backgroundColor: ,
            buttonBackgroundColor: Color(0xff1ABC00),
          ),
        ),
      ),
    );
  }
}







