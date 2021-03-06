part of 'widget.dart';

class PageOrganizerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget heading() {
      return Container(
        padding: EdgeInsets.only(
          top: 50,
          left: 20,
        ),
        width: double.infinity,
        height: 241,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/event_card.png'),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            'Go Back',
            style: sfbold.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: backgroundWhite,
            ),
          ),
        ),
      );
    }

    Widget nameHero() {
      return Container(
        margin: EdgeInsets.only(top: 61),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Smade Club',
              style: sfbold.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            Text(
              'Event Organizer',
              style: sfbold.copyWith(
                fontSize: 13,
                color: primaryColor,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xffFE9870),
                  size: 14,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '4.8',
                  style: sfbold.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '(119 reviews)',
                  style: sfbold.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffA0A3BD),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget category() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: 68,
          right: 68,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Events',
                  style: sfbold.copyWith(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffA0A3BD),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return FollowingPage();
                        });
                  },
                  child: Text(
                    'Following',
                    style: sfbold.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffA0A3BD),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return FollowersPage();
                        });
                  },
                  child: Text(
                    'Followers',
                    style: sfbold.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffA0A3BD),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '84',
                  style: sfbold.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return FollowingPage();
                        });
                  },
                  child: Text(
                    '210',
                    style: sfbold.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return FollowersPage();
                        });
                  },
                  child: Text(
                    '950',
                    style: sfbold.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(top: 41),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 110,
              height: 35,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: darkBlueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Follow',
                  style: sfbold.copyWith(
                    fontSize: 12,
                    color: backgroundWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              width: 110,
              height: 35,
              decoration: BoxDecoration(
                border: Border.all(
                  color: darkBlueColor,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DmOrganizer()));
                },
                child: Text(
                  'Message',
                  style: sfbold.copyWith(
                    fontSize: 12,
                    color: darkBlueColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 89,
              ),
              width: double.infinity,
              height: 333,
              decoration: BoxDecoration(
                  color: backgroundWhite,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: primaryColor.withOpacity(0.2),
                      offset: Offset.fromDirection(2.0),
                    )
                  ]),
              child: Column(
                children: [
                  nameHero(),
                  category(),
                  button(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // ABOUT
            Text(
              'About',
              style: sfbold.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),

            SizedBox(
              height: 15,
            ),

            // SUBTITLE
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus integer ornare id turpis commodo molestie sit convallis turpis. Gravida morbi fermentum ut diam arcu nunc tortor euismod. Odio urna interdum auctor id in aenean erat habitasse gravida.',
              style: sfbold.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xffA0A3BD),
              ),
              textAlign: TextAlign.justify,
            ),

            SizedBox(
              height: 30,
            ),

            // COMMING SOON
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming events',
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                Text(
                  'See all',
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: blueColor,
                  ),
                ),
              ],
            ),

            //todo SCROOL COMING SOON
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 13),
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    width: 165,
                    height: 131,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/event_card.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // content 1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF).withOpacity(0.6),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              width: 35,
                              height: 35,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '01',
                                    style: sfbold.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'JAN',
                                    style: sfbold.copyWith(
                                      color: grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/image_photo3.png',
                                  width: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '99+',
                                        style: sfbold.copyWith(
                                          fontSize: 8,
                                          color: backgroundWhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 12,
                        ),
                        // live
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Color(0xffF14336),
                              size: 5,
                            ),
                            Text(
                              'Live Event',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Marlian Fest',
                          style: sfbold.copyWith(
                            fontSize: 11,
                            color: backgroundWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Victoria Island, Lagos',
                          style: sfbold.copyWith(
                            fontSize: 6,
                            color: backgroundWhite,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '50',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: backgroundWhite,
                                size: 20,
                              ),
                            ),
                            Icon(
                              Icons.share,
                              color: backgroundWhite,
                              size: 12,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.favorite,
                              color: backgroundWhite,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13),
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    width: 165,
                    height: 131,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/event_card.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // content 1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF).withOpacity(0.6),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              width: 35,
                              height: 35,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '01',
                                    style: sfbold.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'JAN',
                                    style: sfbold.copyWith(
                                      color: grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/image_photo3.png',
                                  width: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '99+',
                                        style: sfbold.copyWith(
                                          fontSize: 8,
                                          color: backgroundWhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 12,
                        ),
                        // live
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Color(0xffF14336),
                              size: 5,
                            ),
                            Text(
                              'Live Event',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Marlian Fest',
                          style: sfbold.copyWith(
                            fontSize: 11,
                            color: backgroundWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Victoria Island, Lagos',
                          style: sfbold.copyWith(
                            fontSize: 6,
                            color: backgroundWhite,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '50',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: backgroundWhite,
                                size: 20,
                              ),
                            ),
                            Icon(
                              Icons.share,
                              color: backgroundWhite,
                              size: 12,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.favorite,
                              color: backgroundWhite,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13),
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    width: 165,
                    height: 131,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/event_card.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // content 1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF).withOpacity(0.6),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              width: 35,
                              height: 35,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '01',
                                    style: sfbold.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'JAN',
                                    style: sfbold.copyWith(
                                      color: grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/image_photo3.png',
                                  width: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '99+',
                                        style: sfbold.copyWith(
                                          fontSize: 8,
                                          color: backgroundWhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 12,
                        ),
                        // live
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Color(0xffF14336),
                              size: 5,
                            ),
                            Text(
                              'Live Event',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Marlian Fest',
                          style: sfbold.copyWith(
                            fontSize: 11,
                            color: backgroundWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Victoria Island, Lagos',
                          style: sfbold.copyWith(
                            fontSize: 6,
                            color: backgroundWhite,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '50',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: backgroundWhite,
                                size: 20,
                              ),
                            ),
                            Icon(
                              Icons.share,
                              color: backgroundWhite,
                              size: 12,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.favorite,
                              color: backgroundWhite,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            // PAST EVENT
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Past events',
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                Text(
                  'See all',
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: blueColor,
                  ),
                ),
              ],
            ),

            //todo SCROOL PAST EVENT
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 13),
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    width: 165,
                    height: 131,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/event_card.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // content 1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF).withOpacity(0.6),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              width: 35,
                              height: 35,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '01',
                                    style: sfbold.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'JAN',
                                    style: sfbold.copyWith(
                                      color: grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/image_photo3.png',
                                  width: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '99+',
                                        style: sfbold.copyWith(
                                          fontSize: 8,
                                          color: backgroundWhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 12,
                        ),
                        // live
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Color(0xffF14336),
                              size: 5,
                            ),
                            Text(
                              'Live Event',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Marlian Fest',
                          style: sfbold.copyWith(
                            fontSize: 11,
                            color: backgroundWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Victoria Island, Lagos',
                          style: sfbold.copyWith(
                            fontSize: 6,
                            color: backgroundWhite,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '50',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: backgroundWhite,
                                size: 20,
                              ),
                            ),
                            Icon(
                              Icons.share,
                              color: backgroundWhite,
                              size: 12,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.favorite,
                              color: backgroundWhite,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13),
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    width: 165,
                    height: 131,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/event_card.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // content 1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF).withOpacity(0.6),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              width: 35,
                              height: 35,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '01',
                                    style: sfbold.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'JAN',
                                    style: sfbold.copyWith(
                                      color: grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/image_photo3.png',
                                  width: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '99+',
                                        style: sfbold.copyWith(
                                          fontSize: 8,
                                          color: backgroundWhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 12,
                        ),
                        // live
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Color(0xffF14336),
                              size: 5,
                            ),
                            Text(
                              'Live Event',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Marlian Fest',
                          style: sfbold.copyWith(
                            fontSize: 11,
                            color: backgroundWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Victoria Island, Lagos',
                          style: sfbold.copyWith(
                            fontSize: 6,
                            color: backgroundWhite,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '50',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: backgroundWhite,
                                size: 20,
                              ),
                            ),
                            Icon(
                              Icons.share,
                              color: backgroundWhite,
                              size: 12,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.favorite,
                              color: backgroundWhite,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13),
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    width: 165,
                    height: 131,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/event_card.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // content 1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF).withOpacity(0.6),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              width: 35,
                              height: 35,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '01',
                                    style: sfbold.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'JAN',
                                    style: sfbold.copyWith(
                                      color: grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/image_photo3.png',
                                  width: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Image.asset(
                                    'assets/image_photo2.png',
                                    width: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '99+',
                                        style: sfbold.copyWith(
                                          fontSize: 8,
                                          color: backgroundWhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 12,
                        ),
                        // live
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Color(0xffF14336),
                              size: 5,
                            ),
                            Text(
                              'Live Event',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Marlian Fest',
                          style: sfbold.copyWith(
                            fontSize: 11,
                            color: backgroundWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Victoria Island, Lagos',
                          style: sfbold.copyWith(
                            fontSize: 6,
                            color: backgroundWhite,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '50',
                              style: sfbold.copyWith(
                                fontSize: 8,
                                color: backgroundWhite,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: backgroundWhite,
                                size: 20,
                              ),
                            ),
                            Icon(
                              Icons.share,
                              color: backgroundWhite,
                              size: 12,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.favorite,
                              color: backgroundWhite,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 32,
            ),

            //todo REVIEW
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reviews',
                  style: sfbold.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return WriteMessage();
                    }));
                  },
                  child: Text(
                    'Write a Review',
                    style: sfbold.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: blueColor,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 8,
            ),

            //todo STAR REVIEW
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xffFE9870),
                  size: 14,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '4.8',
                  style: sfbold.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '(119 reviews)',
                  style: sfbold.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffA0A3BD),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),

            // todo  CONTENT REVIEW
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/image_photo.png',
                      width: 42,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tokunbo Douglas', style: sfbold),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffFE9870),
                                size: 14,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '4.8',
                                style: sfbold.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'Jan 05, 2020',
                                style: sfbold.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA0A3BD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  'Smade Club is one of the best event organizers out there. Every event they???ve organized is 100% lit! No cap!Will always recommend.',
                  style: sfreguler.copyWith(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              heading(),
              content(),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Center(
                  child: Image.asset(
                    'assets/image_photo2.png',
                    height: 70,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
