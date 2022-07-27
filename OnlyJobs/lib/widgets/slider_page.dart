import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  const SliderPage({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xFF937BF6),
      child: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
                  width: size.width,
                  child: SvgPicture.asset(image),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 15),
                  width: size.width,
                  height: size.height * 0.45,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: Text(
                          title,
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
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: Text(
                          description,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
