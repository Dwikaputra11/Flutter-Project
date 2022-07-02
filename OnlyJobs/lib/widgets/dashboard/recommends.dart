import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Recommends extends StatelessWidget {
  const Recommends({Key? key}) : super(key: key);

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
                'Reccomends For You',
                style: Theme.of(context)
                    .textTheme
                    .headline6
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
        SizedBox(
          height: 250,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            shrinkWrap: false,
            itemBuilder: (ctx, i) => Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: SvgPicture.asset(
                        'lib/assets/img/tugas12/discord.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 70,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'UI/UX Designer',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              SvgPicture.asset(
                                  'lib/assets/img/tugas12/bookmark.svg'),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            'Discord • Fulltime',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF8D8D8D),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
