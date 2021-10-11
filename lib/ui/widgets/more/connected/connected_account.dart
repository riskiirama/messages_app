part of 'connected.dart';

class ConnectedAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget text() {
      return Container(
        margin: EdgeInsets.only(top: 26),
        child: Text(
          'Connect your social media accounts to Ibloolv. You don’t have to add them all.',
          style: sfbold.copyWith(
            fontSize: 15,
            color: grey,
          ),
        ),
      );
    }

    Widget twitterInput() {
      return Container(
        margin: EdgeInsets.only(top: 26),
        padding: EdgeInsets.only(
          top: 13,
          bottom: 13,
          left: 24,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xffC5C5C5),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icon_twitter.png',
              width: 24,
            ),
            SizedBox(width: 13),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Twitter',
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget facebookInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(
          top: 13,
          bottom: 13,
          left: 24,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xffC5C5C5),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icon_facebook.png',
              width: 24,
            ),
            SizedBox(width: 13),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Facebook',
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget instagramInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(
          top: 13,
          bottom: 13,
          left: 24,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xffC5C5C5),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icon_instagram.png',
              width: 24,
            ),
            SizedBox(width: 13),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Instagram',
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget youtubeInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(
          top: 13,
          bottom: 13,
          left: 24,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xffC5C5C5),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icon_youtube.png',
              width: 24,
            ),
            SizedBox(width: 13),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Youtube',
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget customBottomBar() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(
          left: 23,
          right: 22,
          bottom: 34,
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: darkBlueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Connect Accounts',
            style: sfbold.copyWith(
              fontSize: 15,
              color: backgroundWhite,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundWhite,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: backgroundWhite,
          centerTitle: true,
          automaticallyImplyLeading: false,
          flexibleSpace: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
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
          title: Text(
            'Connected Accounts',
            style: sfbold.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
        ),
        bottomNavigationBar: customBottomBar(),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              text(),
              twitterInput(),
              facebookInput(),
              instagramInput(),
              youtubeInput(),
            ],
          ),
        ),
      ),
    );
  }
}
