import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsUpdate extends StatelessWidget {
  const NewsUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          viewportFraction: 0.8,
          enlargeCenterPage: true,
        ),
        itemCount: 2,
        itemBuilder: (ctx,indexPage, pageViewIndex) => Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          height: 105,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF876AFF),
                    Color(0xFFA28CFD),
                  ])),
          child: Stack(
            children: [
              const Positioned(
                top: 15,
                left: 15,
                child: Text(
                  'Let\'s find new job\nsuitable for you',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              Positioned(
                  top: 10,
                  right: 10,
                  child:
                      SvgPicture.asset('lib/assets/img/tugas12/read_more.svg')),
              Positioned(
                bottom: 15,
                left: 15,
                child: SizedBox(
                  width: 100,
                  height: 30,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Read More',
                      style: TextStyle(
                        color: Color(0xFF937BF6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
