import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants_project/utils/dimantions.dart';
class SplashIconWithText extends StatelessWidget {
  const SplashIconWithText({
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: Dimantions.width55,
          bottom: Dimantions.height35,
          child: SizedBox(
            width: Dimantions.width30,
            height: Dimantions.height20,
            child: SvgPicture.asset(
              'assets/images/splash.svg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        // ignore: prefer_const_constructors
        Text(
          'La Vie',
          style:  TextStyle(
            color: Colors.black,
            fontFamily: 'Meddon',
            fontSize: Dimantions.height35,
          ),
        ),
      ],
    );
  }
}
