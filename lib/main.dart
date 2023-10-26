import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/session.dart';
import 'pages/blank_page.dart';
import 'pages/detail_page.dart';
import 'pages/home_page.dart';
import 'pages/intro_page.dart';
import 'pages/login_page.dart';
import 'pages/profile_page.dart';
import 'pages/recom_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: Session.getToken(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const LoginPage();
          } else {
            return IntroPage();
          }
        },
      ),
      routes: {
        '/home' : (context) => HomePage(),
        '/class' : (context) => const RecomPage(),
        '/detail' : (context) => const DetailPage(),
        '/profile' : (context) => const ProfilePage(),
        '/blank' : (context) => const BlankPage(),
      },
    );
  }
}