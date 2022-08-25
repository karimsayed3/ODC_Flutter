import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants_project/utils/dimantions.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: Dimantions.height120,
              child: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: Dimantions.width10),
                  padding: EdgeInsets.symmetric(horizontal: Dimantions.width10),
                  height: 50,
                  child: Container(
                    // margin: EdgeInsets.all(5),
                    padding:
                         EdgeInsets.symmetric(horizontal: Dimantions.width10, vertical: Dimantions.height10),
                    decoration: BoxDecoration(
                      color: const Color(0xffF8F8F8),
                      borderRadius: BorderRadius.circular(Dimantions.height10),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            color: Color(0xff979797),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: Dimantions.width40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent searchs',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797),
                        fontFamily: "Roboto",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) => recentRecord(),
                          separatorBuilder: (context, index) => Container(
                            height: Dimantions.height25,
                          ),
                          itemCount: 5),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row recentRecord() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: Dimantions.width20,
          height: Dimantions.height20,
          child: Image.asset(
            'assets/images/clock2.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: Dimantions.width15,
        ),
        Text(
          'GARDENIA PLANT'.toLowerCase(),
          style: TextStyle(
              color: Color(0xff979797),
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto'),
        ),
        Spacer(),
        InkWell(
            onTap: () {}, child: SvgPicture.asset('assets/images/delete.svg'))
      ],
    );
  }
}
