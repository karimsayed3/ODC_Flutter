import 'package:flutter/material.dart';
import 'package:plants_project/utils/dimantions.dart';

Widget homeItem() {
  return Container(
    height: 350,
    width: 100,
    // color: Colors.amber,
    child: Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            margin: EdgeInsets.only(left: 7, bottom: 8),
            height: 200,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: Dimantions.width65,
                        height: Dimantions.height35,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimantions.width5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  print("dsdsd");
                                },
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  color: Color(0xffF7F6F7),
                                  child: Icon(
                                    Icons.remove,
                                    size: Dimantions.width13,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                  fontSize: Dimantions.width15,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  print("dsdsdsasa");
                                },
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  color: Color(0xffF7F6F7),
                                  child: Icon(
                                    Icons.add,
                                    size: Dimantions.width13,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'GARDENIA PLANT',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '180,000',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 12),
                          ),
                          SizedBox(
                            width: Dimantions.width5,
                          ),
                          Text(
                            'Egp',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: Dimantions.height45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Add To Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: const Color(0xff1ABC00),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 105,
            height: 160,
            // color: Colors.red,
            // padding: EdgeInsets.only(right: 20),
            child: Image.asset(
              'assets/images/plant3.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}
