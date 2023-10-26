import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_ceklpse/config/theme.dart';
import 'package:test_ceklpse/widgets/custom_bottom.dart';
import 'package:test_ceklpse/widgets/topBar_custom.dart';
import 'package:test_ceklpse/widgets/video_course.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const VideoCourse(),
              content(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const TopBarCustom(),
          buttonBuy(),
        ],
      ),
    );
  }

  Container buttonBuy() {
    return Container(
      height: 75,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: CustomBottom(
        title: 'Buy Courses',
        onPressed: () {},
      ),
    );
  }

  Container content() {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'UI/UX for Beginner',
                style: blackTextStyle.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 22),
              ),
              Image.asset(
                'assets/wishlist.png',
                width: 40,
                height: 40,
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Rp. 250k',
                style: blueTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'Rp. 320k',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RatingBar.builder(
                initialRating: 4,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                itemBuilder: (context, _) => Icon(
                  Icons.star_rate_rounded,
                  color: kYellowColor,
                ),
                unratedColor: kInactiveColor,
                onRatingUpdate: (rating) {
                  // print(rating);
                },
                ignoreGestures: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  '4.1',
                  style: greyTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                child: Text(
                  '🔹',
                  style: greyTextStyle.copyWith(fontSize: 17),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 3),
                height: 20,
                child: Text(
                  '(12.334)',
                  style: greyTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: kGreyColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '450 Members',
                    style: blackTextStyle.copyWith(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.slow_motion_video_sharp,
                    color: kGreyColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '32 Courses',
                    style: blackTextStyle.copyWith(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.book_sharp,
                    color: kGreyColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '23 Certificate',
                    style: blackTextStyle.copyWith(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

}
