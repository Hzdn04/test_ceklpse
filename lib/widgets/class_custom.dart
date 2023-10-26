import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_ceklpse/config/theme.dart';

class ClassCustom extends StatelessWidget {
  final String title;
  final String asset;
  final String triner;
  final String price;
  final double star;
  final int value;
  final double width;
  final double height;

  const ClassCustom(
      {super.key,
      required this.title,
      required this.asset,
      required this.triner,
      required this.price,
      this.star = 0,
      this.value = 0,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              offset: Offset(0, 0.5))
        ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 124,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(asset))),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Image.asset(
                        'assets/wishlist.png',
                        width: 24,
                        height: 24,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    triner,
                    style: greyTextStyle.copyWith(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        price,
                        style: blueTextStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Rp. 320k',
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
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
                        initialRating: star,
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
                      SizedBox(
                        height: 15,
                        child: Text(
                          '🔹',
                          style: greyTextStyle.copyWith(fontSize: 17),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 4),
                        height: 17,
                        child: Text(
                          '($value)',
                          style: greyTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
