import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'About Me',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              IconButton(
                  icon: const Icon(
                    Icons.edit,
                    color: Color(0xFFA994FF),
                  ),
                  onPressed: () {}),
            ],
          ),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit et id in integer ut enim sed cursus pharetra. Purus cursus at sodales diam mattis blandit bibendum id et.',
          ),
        ],
      ),
    );
  }
}
