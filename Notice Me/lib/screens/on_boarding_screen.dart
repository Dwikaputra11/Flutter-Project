import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir/widgets/slider_page.dart';

import 'mobile_home_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  final List<Widget> _pages = [
    const SliderPage(
      title: 'Make it easy!',
      description:
          'Let the app remind you of your daily activities',
      image: 'lib/assets/img/on_boarding_1.svg',
    ),
    const SliderPage(
      title: 'Scale up your productivity!',
      description:
          'increase your productivity by taking notes on the app.',
      image: 'lib/assets/img/on_boarding_2.svg',
    )
  ];

  void _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _pages.length,
                controller: _controller,
                onPageChanged: _onChanged,
                itemBuilder: (context, index) {
                  return _pages[index];
                }),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(
                      _pages.length,
                      (index) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: (index == _currentPage) ? 10 : 8,
                          width: (index == _currentPage) ? 10 : 8,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (index == _currentPage)
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5)),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            (_currentPage == _pages.length - 1)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          width: size.width * 0.5,
                          height: size.height * 0.06,
                          child: ElevatedButton(
                            child: const Center(
                              child: Text('Get Started'),
                            ),
                            onPressed: (){
                              Get.to(() => const HomeScreenMobile());
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.amber,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
