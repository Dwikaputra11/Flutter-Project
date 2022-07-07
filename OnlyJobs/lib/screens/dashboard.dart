import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tugas_flutter/widgets/dashboard/featured_jobs.dart';
import 'package:tugas_flutter/widgets/dashboard/news_update.dart';
import 'package:tugas_flutter/widgets/dashboard/recommends.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Image.asset(
                              'lib/assets/img/tugas12/icon_app.png'),
                        ),
                        const TextSpan(
                          text: ' ',
                        ),
                        const TextSpan(
                          text: 'OnlyJobs.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  SvgPicture.asset('lib/assets/img/tugas12/notification.svg')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: 300,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'Search',
                    contentPadding: const EdgeInsets.all(10),
                    prefixIcon:
                        SvgPicture.asset('lib/assets/img/tugas12/search.svg'),
                    suffixIcon:
                        SvgPicture.asset('lib/assets/img/tugas12/filter.svg'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const NewsUpdate(),
            const FeaturedJobs(),
            const Recommends(),
          ],
        ),
      ),
    );
  }
}
