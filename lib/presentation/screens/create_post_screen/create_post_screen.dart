import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants_project/presentation/screens/login_screen/login_signup.dart';
import 'package:plants_project/utils/dimantions.dart';

class Create_Post extends StatefulWidget {
  const Create_Post({Key? key}) : super(key: key);

  @override
  State<Create_Post> createState() => _Create_PostState();
}

class _Create_PostState extends State<Create_Post> {
  var titleController = TextEditingController();
  var descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Dimantions.width20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Dimantions.height80,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                              'assets/images/ios_arrow_back.svg'),
                        ),
                        SizedBox(
                          width: Dimantions.width80,
                        ),
                        Text(
                          'Create New Post',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimantions.height30,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/images/add_photo.svg'),
                  ),
                ),
                SizedBox(
                  height: Dimantions.height30,
                ),
                // Text(
                //   'Title',
                //   style: TextStyle(
                //     fontWeight: FontWeight.w500,
                //     fontFamily: "Roboto",
                //   ),
                // ),
                TitleAndTextField(title: 'Title', controller: titleController),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Description',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Color(0xff6F6F6F)),
                ),
                SizedBox(
                  height: Dimantions.height10,
                ),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(vertical: 60.0),
                     isDense: true,

                  ),
                ),
                SizedBox(
                  height: Dimantions.height30,
                ),
                Container(
                  width: double.infinity,
                  height: Dimantions.height60,
                  // ignore: deprecated_member_use
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff1ABC00),
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Post',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
