import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                          child: Image.asset('lib/assets/img/tugas12/icon_app.png'), 
                        ),
                        TextSpan(
                          text: ' ', 
                        ),
                        TextSpan(
                          text: 'OnlyJobs.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,                         
                          )
                        )
                      ]
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      )
                    ),
                    hintText: 'Search',
                    contentPadding: const EdgeInsets.all(10),
                    prefixIcon: SvgPicture.asset('lib/assets/img/tugas12/search.svg',),
                    suffixIcon: SvgPicture.asset('lib/assets/img/tugas12/filter.svg'),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 10),
              child: Container(
                height: 105,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 105,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF876AFF),
                            Color(0xFFA28CFD),
                          ]
                        )
                      ),
                      child: Stack(
                        children: [
                          Positioned(
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
                            child: SvgPicture.asset('lib/assets/img/tugas12/read_more.svg') 
                          ),
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: SizedBox(
                              width: 100,
                              height: 30,
                              child: ElevatedButton(
                                style:ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    )
                                  ),
                                ),
                                child: Text(
                                  'Read More',
                                  style: TextStyle(
                                    color: Color(0xFF937BF6),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                onPressed: (){},
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 105,
                      width: 300,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF876AFF),
                            Color(0xFFA28CFD),
                          ]
                        )
                      ),
                      child:Stack(
                        children: [
                          Positioned(
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
                            child: SvgPicture.asset('lib/assets/img/tugas12/read_more.svg') 
                          ),
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: SizedBox(
                              width: 100,
                              height: 30,
                              child: ElevatedButton(
                                style:ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    )
                                  ),
                                ),
                                child: Text(
                                  'Read More',
                                  style: TextStyle(
                                    color: Color(0xFF937BF6),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                onPressed: (){},
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Jobs',
                    style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Color(0xFF8D8D8D),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  height: 140,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        height: 140,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20,
                              left: 20,
                              child: Row(
                                children: [
                                  SvgPicture.asset('lib/assets/img/tugas12/airplane.svg', width: 40, height: 40,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Backend Developer',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14, 
                                          ),
                                        ),
                                        Text(
                                          '\$50k-\$80k/year',
                                          style: TextStyle(
                                            fontSize: 13, 
                                          ),
                                        )
                                      ],
                                    ),
                                  ) 
                                ],
                              ),
                            ),
                            Positioned(
                              top: 20,
                              right: 20,
                              child: SvgPicture.asset('lib/assets/img/tugas12/bookmark.svg') 
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              right: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Garuda Indonesia',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset('lib/assets/img/tugas12/location.svg'),
                                          Text(
                                            'Indonesia',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF686868),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                            'Fulltime',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF686868),
                                            ),
                                          )
                                    ],
                                  )
                                ],
                              )
                            ),
                          ],
                        ),
                      ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 140,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 20,
                            child: Row(
                              children: [
                                Image.asset('lib/assets/img/tugas12/fire.png'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Damkar',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14, 
                                        ),
                                      ),
                                      Text(
                                        '\$50k-\$80k/year',
                                        style: TextStyle(
                                          fontSize: 13, 
                                        ),
                                      )
                                    ],
                                  ),
                                ) 
                              ],
                            ),
                          ),
                          Positioned(
                            top: 20,
                            right: 20,
                            child: SvgPicture.asset('lib/assets/img/tugas12/bookmark.svg') 
                          ),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            right: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flamitory',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('lib/assets/img/tugas12/location.svg'),
                                        Text(
                                          'UK',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF686868),
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                          'Fulltime',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF686868),
                                          ),
                                        )
                                  ],
                                )
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0, left: 10),
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
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Color(0xFF8D8D8D),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 10),
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
                          child: SvgPicture.asset('lib/assets/img/tugas12/discord.svg', width: 30, height: 30,),
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
                                  Text(
                                    'UI/UX Designer',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SvgPicture.asset('lib/assets/img/tugas12/bookmark.svg'),
                                ],
                              ),
                              SizedBox(height: 3,),
                              Text(
                                'Discord • Fulltime',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF8D8D8D),
                                ),
                              )
                            ],
                          ) 
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
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
                          child: SvgPicture.asset('lib/assets/img/tugas12/facebook.svg', width: 30, height: 30,),
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
                                  Text(
                                    'Data Analyst',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SvgPicture.asset('lib/assets/img/tugas12/bookmark.svg'),
                                ],
                              ),
                              SizedBox(height: 3,),
                              Text(
                                'Facebook • Fulltime',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF8D8D8D),
                                ),
                              )
                            ],
                          ) 
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
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
                          child: SvgPicture.asset('lib/assets/img/tugas12/discord.svg', width: 30, height: 30,),
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
                                  Text(
                                    'Product Manager',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SvgPicture.asset('lib/assets/img/tugas12/bookmark.svg'),
                                ],
                              ),
                              SizedBox(height: 3,),
                              Text(
                                'Discord • Fulltime',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF8D8D8D),
                                ),
                              )
                            ],
                          ) 
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}