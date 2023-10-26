import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ceklpse/config/theme.dart';
import 'package:test_ceklpse/controller/c_home.dart';
import 'package:test_ceklpse/pages/blank_page.dart';
import 'package:test_ceklpse/pages/content_page.dart';
import 'package:test_ceklpse/pages/profile_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

   final cHome = Get.put(CHome());

  final List<Map> listNav = [
    {'icon': const Icon(Icons.home), 'label': 'Home'},
    {'icon': const Icon(Icons.list), 'label': 'Wishlist'},
    {'icon': const Icon(Icons.video_library), 'label': 'My Course'},
    {'icon': const Icon(Icons.person), 'label': 'Profile'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Obx(() {
        if (cHome.indexPage == 1) {
          return const BlankPage();
        } else if (cHome.indexPage == 2){
          return const BlankPage();
        } else if (cHome.indexPage == 3) {
          return const ProfilePage();
        } 
        return const ContentPage();
      }),
      bottomNavigationBar: Obx(() {
        return Material(
          elevation: 8,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(top: 8, bottom: 6),
            child: BottomNavigationBar(
                currentIndex: cHome.indexPage,
                onTap: (value) => cHome.indexPage = value,
                backgroundColor: Colors.transparent,
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.black54,
                selectedIconTheme: IconThemeData(color: kPrimaryColor),
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold),
                selectedFontSize: 12,
                items: listNav.map((e) {
                  return BottomNavigationBarItem(
                    icon: e['icon'],
                    label: e['label'],
                  );
                }).toList()),
          ),
        );
      }),
    );
  }
}
