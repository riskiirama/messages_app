part of 'pages.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget account() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ACCOUNT',
              style: sfbold.copyWith(
                fontWeight: FontWeight.bold,
                color: darkGreyColor,
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentMethod(),
                    ));
              },
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_payment.png',
                    width: 24,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Payment method',
                    style: sfbold.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 8,
                    height: 12,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_arrow.png',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget preferencesButton(String image, String text) {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  width: 24,
                ),
                SizedBox(width: 30),
                Text(
                  text,
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                Spacer(),
                Container(
                  width: 8,
                  height: 12,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_arrow.png',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget preferences() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PREFERENCES',
              style: sfbold.copyWith(
                fontWeight: FontWeight.bold,
                color: darkGreyColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConnectedAccount(),
                    ));
              },
              child: preferencesButton(
                'assets/icon_account.png',
                'Connected Accounts',
              ),
            ),
            preferencesButton(
              'assets/icon_love.png',
              'Interests',
            ),
            preferencesButton(
              'assets/icon_privacy.png',
              'Privacy',
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationPage(),
                    ));
              },
              child: preferencesButton(
                'assets/icon_notification.png',
                'Notifications',
              ),
            ),
          ],
        ),
      );
    }

    Widget security() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SECURITY',
              style: sfbold.copyWith(
                fontWeight: FontWeight.bold,
                color: darkGreyColor,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Image.asset(
                  'assets/icon_reset.png',
                  width: 24,
                ),
                SizedBox(width: 30),
                Text(
                  'Reset Password',
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                Spacer(),
                Container(
                  width: 8,
                  height: 12,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_arrow.png',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget aboutButton(String image, String text) {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  width: 24,
                ),
                SizedBox(width: 30),
                Text(
                  text,
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                Spacer(),
                Container(
                  width: 8,
                  height: 12,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_arrow.png',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget about() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ABOUT IBLOOV',
              style: sfbold.copyWith(
                fontWeight: FontWeight.bold,
                color: darkGreyColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutTerms(),
                    ));
              },
              child: aboutButton(
                'assets/icon_info.png',
                'Terms and conditions',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FaqsPage(),
                    ));
              },
              child: aboutButton(
                'assets/icon_faqs.png',
                'FAQs',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReferFriend(),
                    ));
              },
              child: aboutButton(
                'assets/icon_share.png',
                'Refer a Friend',
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Image.asset(
                  'assets/icon_logout.png',
                  width: 24,
                ),
                SizedBox(width: 30),
                Text(
                  'Logout',
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFF2A52),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundLinear,
        appBar: AppBar(
          backgroundColor: backgroundLinear,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Settings',
            style: sfbold.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          flexibleSpace: Center(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              width: double.infinity,
              height: 44,
              color: backgroundWhite,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'GoBack',
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff858585),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  account(),
                  preferences(),
                  security(),
                  about(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
