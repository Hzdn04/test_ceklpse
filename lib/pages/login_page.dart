import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/theme.dart';
import '../fetch/fetch_user.dart';
import 'intro_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  final controllerUsername = TextEditingController();
  final controllerPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // password visibilty
  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  void login() async {
    if (formKey.currentState!.validate()) {
      bool? yes = await FetchUser.login(
          controllerUsername.text, controllerPassword.text, context);
      if (yes != false) {
        Get.defaultDialog(
            title: "Berhasil",
            middleText: "Have nice day's",
            backgroundColor: kPrimaryColor,
            titleStyle: whiteTextStyle.copyWith(
                fontSize: 15, fontWeight: FontWeight.w700),
            middleTextStyle: whiteTextStyle.copyWith(
                fontSize: 11, fontWeight: FontWeight.w500),
            radius: 20);
        Timer(const Duration(seconds: 2), () {
          Get.off(() => IntroPage());
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Color(0xff347AF6),
                    Color.fromARGB(255, 143, 184, 255)
                  ], begin: Alignment.topCenter, end: Alignment.bottomLeft)),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontFamily: "San-Serif",
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Color(0xff347AF6),
                    Color.fromARGB(255, 143, 184, 255)
                  ], begin: Alignment.topCenter, end: Alignment.bottomLeft)),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              child: Center(),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E9EE),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: controllerUsername,
                          validator: (value) =>
                              value == '' ? "Username Wajib Diisi" : null,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: kPrimaryColor,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              labelText: "Email: ",
                              labelStyle: TextStyle(color: kPrimaryColor)),
                        ),
                        TextFormField(
                          controller: controllerPassword,
                          validator: (value) =>
                              value == '' ? "Password Wajib Diisi" : null,
                          obscureText: !passwordVisible,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                color: Colors.grey,
                                splashRadius: 1,
                                icon: Icon(passwordVisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined),
                                onPressed: togglePassword,
                              ),
                              icon: Icon(
                                Icons.vpn_key,
                                color: kPrimaryColor,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              labelText: "Password: ",
                              labelStyle: TextStyle(color: kPrimaryColor)),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: Text(
                        "FORGOT PASSWORD?",
                        style: TextStyle(color: kPrimaryColor, fontSize: 12),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 50,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.amber,
                              onTap: () {
                                login();
                              },
                              child: Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  kPrimaryColor,
                                  Color.fromARGB(255, 143, 184, 255)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        mini: true,
                        elevation: 0,
                        child: Icon(Icons.facebook),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        mini: true,
                        elevation: 0,
                        child: Icon(Icons.g_mobiledata),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "DON'T HAVE AN ACCOUNT ",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 11,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
