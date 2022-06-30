import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Experience',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_circle_outline,
                    color: Color(0xFFA994FF)),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (ctx, i) => Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Center(
                child: ListTile(
                  title: const Text('Mobile Development'),
                  subtitle: const Text('OnlyJobs.'),
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100,
                    ),
                    child: SvgPicture.asset('lib/assets/icon/experience.svg'),
                  ),
                  trailing: Container(
                    width: 70,
                    decoration: BoxDecoration(
                        color: const Color(0xFFA994FF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Present\n-\n2019',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            itemCount: 3,
          ),
        )
      ],
    );
  }
}
