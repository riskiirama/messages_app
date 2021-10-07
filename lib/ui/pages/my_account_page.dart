part of 'pages.dart';

class MyAccountPage extends StatelessWidget {
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
                Image.asset(
                  'assets/icon_more.png',
                  width: 42,
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
              style: textBold.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: backgroundWhite,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '@Opeepee',
              style: textBold.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: backgroundWhite,
              ),
            ),
            SizedBox(height: 14),
            Text(
              'Est ultricies integer quis auctor elit sed\nvulputate mi. Tincidunt dui ut ornare lectus sit. ',
              textAlign: TextAlign.center,
              style: textBold.copyWith(
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
                      style: textBold.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: backgroundWhite,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '105',
                      style: textBold.copyWith(
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
                      style: textBold.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: backgroundWhite,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '89',
                      style: textBold.copyWith(
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

    Widget favoriteAndEvents() {
      return Container(
        margin: EdgeInsets.only(top: 36),
        child: Row(
          children: [
            Column(
              children: [],
            )
          ],
        ),
      );
    }

    Widget defaultTab() {
      return DefaultTabController(
        length: 2,
        child: TabBar(
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
                    style: textBold.copyWith(
                      color: primaryColor,
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
                    style: textBold.copyWith(
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget container() {
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Color(0xffC4C4C4),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            favoriteAndEvents(),
            defaultTab(),
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
            container(),
          ],
        ),
      ),
    );
  }
}
