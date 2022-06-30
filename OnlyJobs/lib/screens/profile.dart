import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/profile/about_me.dart';
import '../widgets/profile/experience.dart';
import '../widgets/profile/skills.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'lib/assets/img/dwika.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 120,
                  ),
                ),
                Text(
                  'Dwika Putra',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFA994FF),
                      ),
                ),
                const Text('Mobile Developer'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset('lib/assets/icon/twitter.svg'),
                    const SizedBox(width: 10,), 
                    SvgPicture.asset('lib/assets/icon/instagram.svg'),
                    const SizedBox(width: 10,), 
                    SvgPicture.asset('lib/assets/icon/facebook_dark.svg'),
                  ],
                ),
                const AboutMe(),
                const Skills(),
                const Experience(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
