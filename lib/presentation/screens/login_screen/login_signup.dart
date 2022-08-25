// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants_project/presentation/widgets/splash_screen_icon_widget.dart';
import 'package:plants_project/utils/colors.dart';
import 'package:plants_project/utils/dimantions.dart';

class Login_Signup extends StatefulWidget {
  const Login_Signup({Key? key}) : super(key: key);

  @override
  State<Login_Signup> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Login_Signup> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  bool isSignup = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACKGROUND_COLOR,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: Dimantions.width250),
              child: SvgPicture.asset(
                'assets/images/homePic.svg',
                width: Dimantions.width100,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimantions.width22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: SplashIconWithText()),
                  SizedBox(
                    height: Dimantions.height10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignup = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Sign up',
                              style: TextStyle(
                                fontSize: Dimantions.height18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                                color: isSignup
                                    ? Color(0xff1ABC00)
                                    : Color(0xff8A8A8A),
                              ),
                            ),
                            SizedBox(height: Dimantions.height5),
                            Container(
                              height: 2,
                              width: 50,
                              color:
                                  isSignup ? Color(0xff1ABC00) : Colors.white,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignup = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: Dimantions.height18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                                color: isSignup
                                    ? Color(0xff8A8A8A)
                                    : Color(0xff1ABC00),
                              ),
                            ),
                            SizedBox(
                              height: Dimantions.height5,
                            ),
                            Container(
                              height: 2,
                              width: 40,
                              color:
                                  isSignup ? Colors.white : Color(0xff1ABC00),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimantions.height30,
                  ),
                  isSignup
                      ? SignupScreen(
                          firstNameController: firstNameController,
                          lastNameController: lastNameController,
                          passwordController: passwordController,
                          confirmPasswordController: confirmPasswordController)
                      : LoginScreen(
                          emailController: emailController,
                          passwordController: passwordController),
                  SizedBox(
                    height: Dimantions.height20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: Dimantions.height45,
                    child: FlatButton(
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: const Color(0xff1ABC00),
                    ),
                  ),
                  SizedBox(
                    height: Dimantions.height10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 1,
                        width: Dimantions.width80,
                        color: const Color(0xff979797),
                      ),
                      const Text(
                        'or continue with',
                        style: TextStyle(
                          color: Color(0xff979797),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: Dimantions.width80,
                        color: const Color(0xff979797),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimantions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      iconButton(iconPath: 'assets/images/Google_icon.svg'),
                      SizedBox(
                        width: Dimantions.width30,
                      ),
                      iconButton(iconPath: 'assets/images/facebook_icon.svg'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: Dimantions.width250),
              child: SvgPicture.asset(
                'assets/images/left_plante_image.svg',
                width: Dimantions.width100,
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell iconButton({required String iconPath}) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: Dimantions.width25,
        height: Dimantions.height25,
        child: SvgPicture.asset(
          iconPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndTextField(
          title: 'Email',
          controller: emailController,
        ),
        SizedBox(
          height: Dimantions.height20,
        ),
        TitleAndTextField(
          title: 'Password',
          controller: passwordController,
        ),
      ],
    );
  }
}

class SignupScreen extends StatelessWidget {
  const SignupScreen({
    Key? key,
    required this.firstNameController,
    required this.lastNameController,
    required this.passwordController,
    required this.confirmPasswordController,
  }) : super(key: key);

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndTextField(
          title: 'First Name',
          controller: firstNameController,
        ),
        SizedBox(
          height: Dimantions.height20,
        ),
        TitleAndTextField(
          title: 'Last Name',
          controller: lastNameController,
        ),
        SizedBox(
          height: Dimantions.height20,
        ),
        TitleAndTextField(
          title: 'Password',
          controller: passwordController,
        ),
        SizedBox(
          height: Dimantions.height20,
        ),
        TitleAndTextField(
          title: 'Confirm password',
          controller: confirmPasswordController,
        ),
      ],
    );
  }
}

class TitleAndTextField extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  const TitleAndTextField(
      {Key? key, required this.title, required this.controller})
      : super(key: key);

  @override
  State<TitleAndTextField> createState() => _TitleAndTextFieldState();
}

class _TitleAndTextFieldState extends State<TitleAndTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto',
              color: Color(0xff6F6F6F)),
        ),
        SizedBox(
          height: Dimantions.height10,
        ),
        SizedBox(
          height: Dimantions.height46,
          child: TextFormField(
            controller: widget.controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
