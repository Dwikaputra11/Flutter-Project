import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeaturedJobs extends StatelessWidget {
  const FeaturedJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured Jobs',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const Text(
                'View All',
                style: TextStyle(
                  color: Color(0xFF8D8D8D),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 140,
          width: double.infinity,
          child: CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: 0.8,
              enableInfiniteScroll: false,
              initialPage: 1,
            ),
            itemCount: 3,
            itemBuilder: (ctx, indexPage, realIndex) => Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 140,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'lib/assets/img/tugas12/airplane.svg',
                          width: 40,
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Backend Developer',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                '\$50k-\$80k/year',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 20,
                      right: 20,
                      child: SvgPicture.asset(
                          'lib/assets/img/tugas12/bookmark.svg')),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Garuda Indonesia',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    'lib/assets/img/tugas12/location.svg'),
                                const Text(
                                  'Indonesia',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF686868),
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              'Fulltime',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF686868),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
