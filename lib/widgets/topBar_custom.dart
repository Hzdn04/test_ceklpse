import 'package:flutter/material.dart';
import 'package:test_ceklpse/config/theme.dart';

class TopBarCustom extends StatelessWidget {
  const TopBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 166,
        width: 340,
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: Column(
          children: [
            SizedBox(
              width: 260,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'About',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 45,
                        height: 3,
                        color: kPrimaryColor,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Lessons',
                        style: greyTextStyle.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 45,
                        height: 3,
                        color: kTransparanColor,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Discussion',
                        style: greyTextStyle.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 45,
                        height: 3,
                        color: kTransparanColor,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 310,
              height: 140,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Text(
                    'About this class',
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum tellus morbi blandit lorem donec id porta. Laoreet vitae et mauris etiam',
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 14),
                    maxLines: 3,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mentor',
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.bottomLeft,
                              padding:
                                  const EdgeInsets.only(right: 20, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35)),
                              child: Image.asset(
                                'assets/him1.png',
                                height: 64,
                                width: 64,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Guy Hawk',
                                  style: blackTextStyle.copyWith(
                                      fontWeight: FontWeight.w500, fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Senior UI at Google',
                                  style: blackTextStyle.copyWith(
                                      fontWeight: FontWeight.w400, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: Text(
                          'View Profile',
                          style: blueTextStyle.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}