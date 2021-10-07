part of 'refer.dart';

class ReferFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        width: double.infinity,
        height: 44,
        color: backgroundWhite,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'GoBack',
                style: textBold.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff858585),
                ),
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Text(
              'Refer Friends',
              style: textBold.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget gift() {
      return Container(
        margin: EdgeInsets.only(top: 85),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_gift.png',
              width: 120,
            )
          ],
        ),
      );
    }

    Widget textGift() {
      return Container(
        margin: EdgeInsets.only(top: 69),
        child: Column(
          children: [
            Text(
              'Get 3% discount on tickets',
              style: textBold.copyWith(
                  color: darkBlueColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Receive discounts on tickets when you refer your\nfriends and they sign up and register for an event\nwith your referral link',
              textAlign: TextAlign.center,
              style: textBold.copyWith(
                color: primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }

    Widget textReffer() {
      return Container(
        margin: EdgeInsets.only(top: 62),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Your Referral Link',
            ),
            Container(
              width: double.infinity,
              height: 51,
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.only(
                left: 22,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xffC5C5C5),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'https://:ibloov.com/jackyln',
                          hintStyle: textBold.copyWith(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Copy',
                      style: textBold.copyWith(
                          fontSize: 13,
                          color: darkBlueColor,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget customBottomBar() {
      return Container(
        height: 51,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 96,
          bottom: 36,
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              vertical: 11,
            ),
            backgroundColor: darkBlueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Share Referral Link',
            style: textBold.copyWith(
              fontSize: 15,
              color: backgroundWhite,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundWhite,
      body: SafeArea(
        child: Container(
          // margin: EdgeInsets.symmetric(horizontal: 22),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 22),
            children: [
              header(),
              gift(),
              textGift(),
              textReffer(),
              customBottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
