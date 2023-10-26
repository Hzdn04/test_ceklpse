import 'package:flutter/material.dart';
import 'package:test_ceklpse/config/theme.dart';
import 'package:test_ceklpse/widgets/category_custom.dart';
import 'package:test_ceklpse/widgets/class_custom.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          header(),
          const SizedBox(
            height: 24,
          ),
          searchField(),
          const SizedBox(
            height: 16,
          ),
          continueLessons(),
          const SizedBox(
            height: 18,
          ),
          category(),
          const SizedBox(
            height: 18,
          ),
          mentors(),
          const SizedBox(
            height: 18,
          ),
          classRecom(context),
        ],
      ),
    );
  }

  Column classRecom(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommendation',
              style: blackTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/class');
              },
              child: const Text('See All',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
            height: 250,
            child: ListView(scrollDirection: Axis.horizontal, children: const [
              ClassCustom(
                  title: 'UI/UX for Beginner',
                  asset: 'assets/cw.png',
                  triner: 'Guy Hawk',
                  price: '200k',
                  star: 2.3,
                  width: 239,
                  height: 240),
              SizedBox(
                width: 16,
              ),
              ClassCustom(
                  title: 'Become Great Scientist',
                  asset: 'assets/cw2.png',
                  triner: 'Kylie Jenner',
                  price: '300k',
                  star: 4.5,
                  value: 24000,
                  width: 239,
                  height: 240),
              SizedBox(
                width: 16,
              ),
              ClassCustom(
                  title: 'UI/UX for Beginner',
                  asset: 'assets/cw3.png',
                  triner: 'Guy Hawk',
                  price: '200k',
                  star: 5,
                  value: 43890,
                  width: 239,
                  height: 240),
              SizedBox(
                width: 16,
              ),
            ])),
      ],
    );
  }

  Column mentors() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Popular ',
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Mentors ',
                  style: purpleTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Text('See All',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.only(right: 20, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35)),
                      child: Image.asset(
                        'assets/him1.png',
                        height: 64,
                        width: 64,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 17),
                    child: Text(
                      'Werner',
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.only(right: 20, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35)),
                      child: Image.asset(
                        'assets/him.png',
                        height: 64,
                        width: 64,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 17),
                    child: Text(
                      'Rooney',
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.only(right: 20, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35)),
                      child: Image.asset(
                        'assets/him2.png',
                        height: 64,
                        width: 64,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 17),
                    child: Text(
                      'Ibrahim',
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.only(right: 20, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35)),
                      child: Image.asset(
                        'assets/him3.png',
                        height: 64,
                        width: 64,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 17),
                    child: Text(
                      'Haaland',
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  SizedBox category() {
    return SizedBox(
      height: 45,
      child: ListView(scrollDirection: Axis.horizontal, children: const [
        CategoryCustom(
          title: '💻 Programming',
        ),
        SizedBox(
          width: 10,
        ),
        CategoryCustom(
          title: '🌏 Science',
        ),
        SizedBox(
          width: 10,
        ),
        CategoryCustom(
          title: '🎨 Art',
        ),
        SizedBox(
          width: 10,
        ),
        CategoryCustom(
          title: '🏋 Gym',
        ),
        SizedBox(
          width: 10,
        ),
        CategoryCustom(
          title: '👩‍ Psychology',
        ),
        SizedBox(
          width: 10,
        ),
        CategoryCustom(
          title: '📷 Photography',
        )
      ]),
    );
  }

  Container continueLessons() {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: kPrimaryColor),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Continue your lessons',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Now, you have 65% completed\nlessons in Programming',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/bar.png',
              width: 80,
              height: 52,
            )
          ],
        ),
      ),
    );
  }

  Container searchField() {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            hintText: 'Search',
            hintStyle: greyTextStyle.copyWith(
                fontSize: 16, fontWeight: FontWeight.w400),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }

  Row header() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Find Your ',
                  style: blackTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Best ',
                  style: purpleTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Text(
              'Online Course 🔥',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Stack(alignment: Alignment.topRight, children: [
            Image.asset(
              'assets/bell.png',
              width: 24,
              height: 26,
            ),
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5)),
            )
          ]),
        ),
      ],
    );
  }
}
