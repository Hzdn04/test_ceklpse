import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ceklpse/config/theme.dart';
import 'package:test_ceklpse/controller/c_home.dart';
import 'package:test_ceklpse/pages/home_page.dart';
import 'package:test_ceklpse/widgets/category_custom.dart';
import 'package:test_ceklpse/widgets/custom_bottom.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  final cHome = Get.put(CHome());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Column(
                  children: [
                    Text(
                      'What are you learning in?',
                      style: blackTextStyle.copyWith(
                          fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Choose two or more.',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CategoryCustom(
                        title: '🌏 Science',
                      ),
                      CategoryCustom(title: '🎨 Art'),
                      CategoryCustom(title: '🏋 Gym'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CategoryCustom(
                        title: '🖌 Design',
                      ),
                      CategoryCustom(
                        title: '💰 Business',
                      ),
                      CategoryCustom(title: '👩‍ Psychology'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CategoryCustom(title: '👽‍‍ 3D Design'),
                      CategoryCustom(title: '🎼 Music'),
                      CategoryCustom(title: '📈 Trading'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CategoryCustom(title: '💊 Pharmacist'),
                      CategoryCustom(title: '💻 Programming'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CategoryCustom(title: '💃‍‍ Lifestyle'),
                      CategoryCustom(title: '📷 Photography'),
                    ],
                  ),
                ],
              ),
              CustomBottom(
                  title: 'Done',
                  onPressed: () {
                    cHome.indexPage = 3;
                    Get.off(() => HomePage());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
