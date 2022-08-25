import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants_project/utils/dimantions.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: Dimantions.screenHeight / 3 + Dimantions.height20,
                // color: Colors.amber,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    opacity: 0.2,
                    image: AssetImage(
                      'assets/images/background.png',
                    ),
                  ),
                ),
                child: Positioned(
                  top: Dimantions.height45,
                  left: Dimantions.width100,
                  child: Column(
                    children: [
                      SizedBox(
                        height: Dimantions.height30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimantions.width30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                
                              },
                              child: SvgPicture.asset(
                                'assets/images/left_arrow.svg',
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                
                              },
                              child: SvgPicture.asset(
                                  'assets/images/more_horizotnal.svg'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: Dimantions.width100,
                        height: Dimantions.height120,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/profile.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimantions.height5,
                      ),
                      Text(
                        'Karim Sayed',
                        style: TextStyle(
                            fontSize: Dimantions.height20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: Dimantions.screenHeight * (2 / 3) - Dimantions.height20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimantions.height15),
                topRight: Radius.circular(Dimantions.height15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: Dimantions.height5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(Dimantions.height20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(Dimantions.height10),
                    height: Dimantions.height70,
                    decoration: BoxDecoration(
                      color: Color(0xffF3FEF1),
                      borderRadius: BorderRadius.circular(Dimantions.height10),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/StarsIcon.svg'),
                        SizedBox(
                          width: Dimantions.width20,
                        ),
                        Text(
                          'You have 30 points',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto',
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimantions.height20,
                  ),
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: Dimantions.height20,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                    ),
                  ),
                  SizedBox(
                    height: Dimantions.height20,
                  ),
                  Container(
                    padding: EdgeInsets.all(Dimantions.height10),
                    height: Dimantions.height70,
                    decoration: BoxDecoration(
                      // color: Color(0xffF3FEF1),
                      borderRadius: BorderRadius.circular(Dimantions.height10),
                      border: Border.all(color: Color(0xff6C6C6C))
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/change.svg'),
                        SizedBox(
                          width: Dimantions.width20,
                        ),
                        Text(
                          'Change Name',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto',
                              fontSize: 16),
                        ),
                        Spacer(),
                        SvgPicture.asset('assets/images/right_arrow.svg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimantions.height20,
                  ),
                  Container(
                    padding: EdgeInsets.all(Dimantions.height10),
                    height: Dimantions.height70,
                    decoration: BoxDecoration(
                      // color: Color(0xffF3FEF1),
                      borderRadius: BorderRadius.circular(Dimantions.height10),
                      border: Border.all(color: Color(0xff6C6C6C))
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/change.svg'),
                        SizedBox(
                          width: Dimantions.width20,
                        ),
                        Text(
                          'Change Email',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto',
                              fontSize: 16),
                        ),
                        Spacer(),
                        SvgPicture.asset('assets/images/right_arrow.svg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
