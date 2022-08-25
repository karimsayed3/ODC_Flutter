// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants_project/utils/dimantions.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: Dimantions.height80,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: Dimantions.width20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/images/left_arrow.svg',
                      width: Dimantions.width20,
                      height: Dimantions.height15,
                    ),
                  ),
                  SizedBox(
                    width: Dimantions.width100,
                  ),
                  Text(
                    'My cart',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: Dimantions.height20,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: false,
                itemBuilder: (context, index) => itemCart(),
                itemCount: 5,
              ),
            ),
            Container(
              height: Dimantions.height120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimantions.height15),
                  topRight: Radius.circular(Dimantions.height15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimantions.width40,
                    vertical: Dimantions.height20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: Dimantions.height20,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '180,000',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Inter',
                                  color: Color(0xff1ABC00)),
                            ),
                            SizedBox(
                              width: Dimantions.width5,
                            ),
                            Text(
                              'Egp',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  color: Color(0xff1ABC00)),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: Dimantions.height45,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {},
                        child:  Text(
                          'Checkout',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: const Color(0xff1ABC00),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding itemCart() {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Dimantions.height10, horizontal: Dimantions.width10),
      child: Container(
        height: Dimantions.height160,
        width: Dimantions.width310,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimantions.height15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: Dimantions.width140,
                height: Dimantions.height130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimantions.height10)),
                child: Image.asset(
                  'assets/images/plant.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: Dimantions.width10,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: Dimantions.height15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Cactus plant',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          fontSize: Dimantions.height18,
                        ),
                      ),
                      Text(
                        '200 EGP',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                            color: Color(0xff1ABC00)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: Dimantions.width65,
                            height: Dimantions.height35,
                            decoration: BoxDecoration(
                              color: Color(0xffF8F8F8),
                              borderRadius: BorderRadius.circular(Dimantions.height10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimantions.width5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.remove,
                                      size: Dimantions.width13,
                                      color: Color(0xff1ABC00),
                                    ),
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Inter',
                                      fontSize: Dimantions.width13,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.add,
                                      size: Dimantions.width13,
                                      color: Color(0xff1ABC00),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: Dimantions.width5),
                            child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                'assets/images/trash_basket.svg',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
