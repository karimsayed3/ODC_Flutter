import 'package:flutter/material.dart';
import 'package:plants_project/presentation/screens/home_layout/home_layout.dart';
import 'package:plants_project/presentation/screens/search_screen/search_screen.dart';
import 'package:plants_project/presentation/screens/wid/mycart_screen.dart';
import 'package:plants_project/presentation/widgets/home_screen/proguct_item.dart';
import 'package:plants_project/presentation/widgets/splash_screen_icon_widget.dart';
import 'package:plants_project/utils/dimantions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SplashIconWithText(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SearchBox(),
        ),
        SizedBox(
          height: Dimantions.height20,
        ),
        CategoryList(),
        SizedBox(
          height: Dimantions.height20,
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 8.0,
              childAspectRatio: 1 / 1.5,
              children: List.generate(
                4,
                (index) => homeItem(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  
}

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List<String> categries = ['All', 'Plants', 'Seeds', 'Tools'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimantions.height35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            categoryCard(text: categries[index], index: index),
        itemCount: categries.length,
      ),
    );
  }

  Widget categoryCard({required String text, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Dimantions.width10),
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimantions.height10),
          color: selectedIndex == index ? Colors.white : Color(0xffF8F8F8),
          border: Border.all(
            color: selectedIndex == index ? Color(0xff1ABC00) : Colors.white,
            width: 2,
          ),
        ),
        // ignore: unnecessary_const
        child: Center(
            // ignore: unnecessary_const
            child: Text(
          text,
          style: TextStyle(
            color: selectedIndex == index ? Colors.green : Color(0xff979797),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        )),
      ),
    );
  }
}



class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // TODO: inkwell navigat to search screen
        Expanded(
          child: Container(
            width: Dimantions.width55,
            height: Dimantions.height45,
            // margin: EdgeInsets.all(5),
            padding:  EdgeInsets.symmetric(horizontal: Dimantions.width10, vertical: Dimantions.height5),
            decoration: BoxDecoration(
              color: const Color(0xffF8F8F8),
              borderRadius: BorderRadius.circular(Dimantions.height10),
            ),
            child: TextFormField(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
              },
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
        const SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCart()),);
          },
          child: Container(
            width: Dimantions.width55,
            height: Dimantions.height45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimantions.height10),
              color: const Color(0xff1ABC00),
            ),
            child: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}