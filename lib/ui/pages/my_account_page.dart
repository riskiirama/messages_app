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
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, left: 190),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Color(0xffC4C4C4),
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
                      Text('data'),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            header(),
            more(),
            profile(),
            content(),
          ],
        ),
      ),
    );
  }
}
