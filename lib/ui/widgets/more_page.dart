part of 'widget.dart';

class MorePageTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget backgroud() {
      return Container(
        padding: EdgeInsets.only(left: 22, right: 22, top: 8),
        width: double.infinity,
        height: 339,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/image_background.png'))),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //todo back
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: backgroundWhite.withOpacity(0.7),
                      size: 13,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Back',
                      style: sfbold.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: backgroundWhite.withOpacity(0.7),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              //todo profile
              Row(
                children: [
                  Image.asset(
                    'assets/image_profile.png',
                    width: 70,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Opeyemi Taiwo',
                        style: sfbold.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: backgroundWhite,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '@Opeepee',
                        style: sfbold.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: backgroundWhite.withOpacity(0.7),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 29,
              ),
              //todo Achievements
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/badges.png',
                        height: 81,
                      ),
                      Text(
                        'Hiker',
                        style: sfbold.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: backgroundWhite.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Achievements',
                        style: sfbold.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: backgroundWhite,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Badges',
                                style: sfbold.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: backgroundWhite.withOpacity(0.7),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '20',
                                style: sfbold.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: backgroundWhite,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Text(
                                'Bloov Coins',
                                style: sfbold.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: backgroundWhite.withOpacity(0.7),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '1289',
                                style: sfbold.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: backgroundWhite,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Text(
                                'Attended',
                                style: sfbold.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: backgroundWhite.withOpacity(0.7),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '15',
                                style: sfbold.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: backgroundWhite,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Text(
                                'Created',
                                style: sfbold.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: backgroundWhite.withOpacity(0.7),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '02',
                                style: sfbold.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: backgroundWhite,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget newRank() {
      return Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
          child: ListView(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: Image.asset('assets/dots.png'),
                  ),
                  Column(
                    children: [
                      new CircularPercentIndicator(
                        radius: 236,
                        lineWidth: 15,
                        percent: 0.6,
                        header: Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Next Rank',
                            style: sfbold.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: darkBlueColor,
                            ),
                          ),
                        ),
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/badges.png',
                              height: 124,
                            ),
                            Text(
                              'Adventurer',
                              style: sfbold.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffA0A3BD),
                              ),
                            ),
                          ],
                        ),
                        backgroundColor: Color(0xffA0A3BD),
                        progressColor: Color(0xff00BA88),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'To reach the next rankyou need to earn the \nfollowing badges and coins',
                        style: sfbold.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffA0A3BD),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Badges :',
                            style: sfbold.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffA0A3BD),
                            ),
                          ),
                          Text(
                            '  3 Badges',
                            style: sfbold.copyWith(
                              fontWeight: FontWeight.bold,
                              color: darkBlueColor,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Bloov Coins :',
                            style: sfbold.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffA0A3BD),
                            ),
                          ),
                          Text(
                            '  300',
                            style: sfbold.copyWith(
                              fontWeight: FontWeight.bold,
                              color: darkBlueColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget levelBadges() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
        child: Image.asset('assets/level_badges.png'),
      );
    }

    Widget mapRank() {
      return Container(
        padding: EdgeInsets.only(bottom: 20),
        child: ListView(
          children: [
            Image.asset(
              'assets/rankmap.png',
              width: 900,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          backgroud(),
          //todo category
          Container(
            margin: EdgeInsets.only(top: 290),
            child: ContainedTabBarView(
              tabBarProperties: TabBarProperties(
                unselectedLabelColor: backgroundWhite.withOpacity(0.2),
                labelColor: backgroundWhite,
                labelStyle: sfbold.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                indicatorColor: Colors.transparent,
              ),
              tabs: [
                Text('Next Rank'),
                Text('Badges'),
                Text('Rank Map'),
              ],
              views: [
                newRank(),
                levelBadges(),
                mapRank(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
