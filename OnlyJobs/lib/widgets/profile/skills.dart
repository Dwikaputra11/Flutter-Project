import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconExperience = [
      'lib/assets/icon/figma.svg',
      'lib/assets/icon/cpp.svg',
      'lib/assets/icon/java.svg',
      'lib/assets/icon/javascript.svg',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Skills',
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
          SizedBox(
            // listview always have width and height
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Center(
                  child: SvgPicture.asset(iconExperience[i]),
                ),
              ),
              itemCount: iconExperience.length,
            ),
          )
        ],
      ),
    );
  }
}
