part of 'pages.dart';

class MyAccountPage extends StatefulWidget {
  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        height: 652,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image_background.png',
            ),
          ),
        ),
      );
    }

    Widget more() {
      return SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 19, right: 19, top: 7),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MorePageTile()));
                  },
                  child: Image.asset(
                    'assets/icon_more.png',
                    width: 42,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget profile() {
      return Container(
        margin: EdgeInsets.only(top: 49),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/image_profile.png',
                width: 150,
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Opeyemi Taiwo',
              style: sfbold.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: backgroundWhite,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '@Opeepee',
              style: sfbold.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: backgroundWhite,
              ),
            ),
            SizedBox(height: 14),
            Text(
              'Est ultricies integer quis auctor elit sed\nvulputate mi. Tincidunt dui ut ornare lectus sit. ',
              textAlign: TextAlign.center,
              style: sfbold.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: backgroundWhite,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Follower',
                      style: sfbold.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: backgroundWhite,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '105',
                      style: sfbold.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: backgroundWhite,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text(
                      'Following',
                      style: sfbold.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: backgroundWhite,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '89',
                      style: sfbold.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: backgroundWhite,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 518),
        width: double.infinity,
        height: 590,
        decoration: BoxDecoration(
          color: backgroundWhite,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 36),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: grey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            ContainedTabBarView(
              tabBarProperties: TabBarProperties(
                height: 100,
                indicatorColor: Colors.transparent,
                labelColor: darkBlueColor,
                unselectedLabelColor: Color(0xffA0A3BD),
              ),
              tabs: [
                Tab(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icon_event.png',
                        width: 22,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Favourites',
                        style: sfbold.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icon_event.png',
                        width: 22,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'My Events',
                        style: sfbold.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              views: [
                Container(
                  color: Color(0xffA0A3BD),
                  child: ContainedTabBarView(
                    tabBarProperties: TabBarProperties(
                      indicatorColor: Colors.transparent,
                      labelColor: darkBlueColor,
                      unselectedLabelColor: Color(0xffA0A3BD),
                    ),
                    tabs: [
                      Container(
                        width: 170,
                        height: 35,
                        color: Color(0xffEFEFEF),
                        child: Center(
                          child: Text(
                            'Events',
                            style: sfbold.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 170,
                        height: 35,
                        color: Color(0xffEFEFEF),
                        child: Center(
                          child: Text(
                            'Organizers',
                            style: sfbold.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                    views: [
                      ListView(
                        children: [
                          PageEvent(),
                        ],
                      ),
                      PageOrganizer(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  color: Color(0xffA0A3BD),
                  child: ContainedTabBarView(
                    tabBarProperties: TabBarProperties(
                      indicatorColor: Colors.transparent,
                      labelColor: darkBlueColor,
                      unselectedLabelColor: Color(0xffA0A3BD),
                    ),
                    tabs: [
                      Container(
                        width: 115,
                        height: 35,
                        color: Color(0xffEFEFEF),
                        child: Center(
                          child: Text(
                            'Attending',
                            style: sfbold.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 115,
                        height: 35,
                        color: Color(0xffEFEFEF),
                        child: Center(
                          child: Text(
                            'Attended',
                            style: sfbold.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 115,
                        height: 35,
                        color: Color(0xffEFEFEF),
                        child: Center(
                          child: Text(
                            'Events I created',
                            style: sfbold.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                    views: [
                      PageAttending(),
                      PageAttending(),
                      Column(
                        children: [
                          //todo  SEARCH
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                                color: backgroundWhite,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: grey,
                                ),
                                SizedBox(
                                  width: 13,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration.collapsed(
                                        hintStyle: sfreguler.copyWith(
                                            fontSize: 12, color: grey),
                                        hintText: 'Search'),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //todo  CONTENT
                          Container(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 14,
                              right: 14,
                              bottom: 15,
                            ),
                            margin: EdgeInsets.symmetric(vertical: 22),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/e1.png'))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //todo tanggal
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: backgroundWhite.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '5',
                                        style: sfbold.copyWith(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffFF2A52)),
                                      ),
                                      Text(
                                        'DEC',
                                        style: sfbold.copyWith(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold,
                                            color: darkBlueColor),
                                      ),
                                    ],
                                  ),
                                ),

                                //todo music
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icon_music.png',
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Afro-Pop',
                                      style: sfbold.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 9,
                                        color: backgroundWhite,
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 5,
                                ),

                                //todo name music
                                Text(
                                  'Burna Boy Concert',
                                  style: sfbold.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: backgroundWhite,
                                  ),
                                ),

                                SizedBox(
                                  height: 8,
                                ),

                                //todo footer
                                Row(
                                  children: [
                                    Text(
                                      'Victoria Island, Lagos',
                                      style: sfbold.copyWith(
                                        fontSize: 10,
                                        color: backgroundWhite,
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      'assets/icon_pencil.png',
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      'Edit Event',
                                      style: sfbold.copyWith(
                                        fontSize: 12,
                                        color: backgroundWhite,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //todo  CONTENT
                          Container(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 14,
                              right: 14,
                              bottom: 15,
                            ),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/e2.png'))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //todo tanggal
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: backgroundWhite.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '5',
                                        style: sfbold.copyWith(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffFF2A52)),
                                      ),
                                      Text(
                                        'DEC',
                                        style: sfbold.copyWith(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold,
                                            color: darkBlueColor),
                                      ),
                                    ],
                                  ),
                                ),

                                //todo music
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icon_music.png',
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Afro-Pop',
                                      style: sfbold.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 9,
                                        color: backgroundWhite,
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 5,
                                ),

                                //todo name music
                                Text(
                                  'Davido Album Launch',
                                  style: sfbold.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: backgroundWhite,
                                  ),
                                ),

                                SizedBox(
                                  height: 8,
                                ),

                                //todo footer
                                Row(
                                  children: [
                                    Text(
                                      'Victoria Island, Lagos',
                                      style: sfbold.copyWith(
                                        fontSize: 10,
                                        color: backgroundWhite,
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      'assets/icon_pencil.png',
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      'Edit Event',
                                      style: sfbold.copyWith(
                                        fontSize: 12,
                                        color: backgroundWhite,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          header(),
          profile(),
          SingleChildScrollView(
              scrollDirection: Axis.vertical, child: content()),
          more(),
        ],
      ),
    );
  }
}

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
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
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

class PageEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
              color: backgroundWhite,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: grey,
                ),
                SizedBox(
                  width: 13,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(hintText: 'Search'),
                  ),
                ),
              ],
            ),
          ),
          CardEventTile(
            image: 'assets/event_card.png',
          ),
          CardEventTile(
            image: 'assets/event_card2.png',
          ),
          CardEventTile(
            image: 'assets/event_card.png',
          ),
        ],
      ),
    );
  }
}
