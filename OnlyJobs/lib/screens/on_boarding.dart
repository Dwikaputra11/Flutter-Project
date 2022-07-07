import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final List<Map<String, String>> _pages = [
    {
      'image': 'lib/assets/img/on_boarding_1.svg',
      'title': 'Apply Everywhere!',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Tellus tortor at aenean feugiat integer neque. Laoreet libero purus adipiscing sed.'
    },
    {
      'image': 'lib/assets/img/on_boarding_2.svg',
      'title': 'Make it Easy!',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Tellus tortor at aenean feugiat integer neque. Laoreet libero purus adipiscing sed.'
    },
    {
      'image': 'lib/assets/img/on_boarding_3.svg',
      'title': 'Find it Now!',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Tellus tortor at aenean feugiat integer neque. Laoreet libero purus adipiscing sed.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('build');
    }
    return Scaffold(
      backgroundColor: const Color(0xFF937BF6),
      body: SafeArea(
        child: Stack(
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                viewportFraction: 1,
                height: MediaQuery.of(context).size.height,
                enableInfiniteScroll: false,
              ),
              itemCount: _pages.length,
              itemBuilder: (ctx, indexPage, pageViewIndex) => Center(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          _pages[indexPage]['image']!,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: double.infinity,
                          height: 350,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  _pages[indexPage]['title']!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      )
                                      .copyWith(
                                        color: Colors.black,
                                      ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  _pages[indexPage]['description']!,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                ),
                                if (indexPage == _pages.length - 1)
                                  Center(
                                    child: SizedBox(
                                      width: 150,
                                      height: 40,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: const Color(0xFFA994FF),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pushReplacementNamed('/home');
                                        },
                                        child: Text(
                                          'Get Started',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dotIndicator(int indexPage) => Positioned(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List<Widget>.generate(_pages.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: (index == indexPage) ? 10 : 8,
              width: (index == indexPage) ? 10 : 8,
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: (index == indexPage)
                      ? Colors.white
                      : Colors.white.withOpacity(0.5)),
            );
          }),
        ),
      );
}
