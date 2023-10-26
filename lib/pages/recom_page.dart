import 'package:flutter/material.dart';
import 'package:test_ceklpse/config/theme.dart';
import 'package:test_ceklpse/widgets/class_custom.dart';

class RecomPage extends StatelessWidget {
  const RecomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text(
          'Recommendation',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: ListView(scrollDirection: Axis.vertical, children: const [
          ClassCustom(
              title: 'UI/UX for Beginner',
              asset: 'assets/cw.png',
              triner: 'Kylie Jenner',
              price: '300k',
              star: 4.5,
              value: 24000,
              width: double.infinity,
              height: 247),
          SizedBox(
            height: 20,
          ),
          ClassCustom(
              title: 'Become Great Scientist',
              asset: 'assets/cw2.png',
              triner: 'Kylie Jenner',
              price: '300k',
              star: 4.5,
              value: 24000,
              width: double.infinity,
              height: 247),
          SizedBox(
            height: 20,
          ),
          ClassCustom(
              title: 'Become Great Scientist',
              asset: 'assets/cw3.png',
              triner: 'Kylie Jenner',
              price: '300k',
              star: 4.5,
              value: 24000,
              width: double.infinity,
              height: 247),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
