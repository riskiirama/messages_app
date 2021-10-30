part of 'pages.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget account() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentMethod(),
              ));
        },
        child: Container(
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
              Row(
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
            ],
          ),
        ),
      );
    }

    Widget conncetedAccounts() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ConnectedAccount(),
              ));
        },
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icon_account.png',
                    width: 24,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Connected Accounts',
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
        ),
      );
    }

    Widget interests() {
      return GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icon_love.png',
                    width: 24,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Interests',
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
        ),
      );
    }

    Widget privacy() {
      return GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icon_privacy.png',
                    width: 24,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Privacy',
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
        ),
      );
    }

    Widget notifications() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotificationPage(),
              ));
        },
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icon_notification.png',
                    width: 24,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Notifications',
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
            conncetedAccounts(),
            interests(),
            privacy(),
            notifications(),
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

    Widget termsButton() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutTerms(),
              ));
        },
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icon_info.png',
                    width: 24,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Terms and conditions',
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
        ),
      );
    }

    Widget faqsButton() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FaqsPage(),
              ));
        },
        child: Container(
          margin: EdgeInsets.only(top: 22),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icon_faqs.png',
                    width: 24,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'FAQs',
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
        ),
      );
    }

    Widget referButton() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReferFriend(),
              ));
        },
        child: Container(
          margin: EdgeInsets.only(top: 22),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icon_share.png',
                    width: 24,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Refer a Friend',
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
            termsButton(),
            faqsButton(),
            referButton(),
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
          automaticallyImplyLeading: false,
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
                onTap: () {},
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

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    Widget text() {
      return Container(
        margin: EdgeInsets.only(
          top: 11,
        ),
        child: Text(
          'Manage your debit cards.',
          style: sfbold.copyWith(
            color: grey,
          ),
        ),
      );
    }

    Widget cards() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CardDetail(),
              ));
        },
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/image_visa.png',
                    width: 62,
                  ),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '**** **** 8220',
                        style: sfbold.copyWith(
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Expires 10/2022',
                        style: sfbold.copyWith(
                          color: grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_arrow.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Divider(
                thickness: 1,
              ),
            ],
          ),
        ),
      );
    }

    Widget newCards() {
      return GestureDetector(
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                margin: EdgeInsets.only(top: 31, right: 22, left: 22),
                height: 600,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Add a Debit Card?',
                                style: sfbold.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Make sure the debit card belongs to you.',
                                style: sfreguler.copyWith(
                                  fontSize: 15,
                                  color: Color(0xff505050),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.close_rounded)),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: TextField(
                        style: sfbold.copyWith(
                          color: primaryColor,
                        ),
                        decoration: InputDecoration(
                          suffixIcon: Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              left: 24,
                              right: 18,
                            ),
                            child: Image.asset(
                              'assets/icon_bank.png',
                              width: 24,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Card Number',
                          labelStyle: sfreguler.copyWith(
                            color: Color(0xffA0A3BD),
                          ),
                        ),
                      ),
                    ),
                    // NOTE: EXPIRY DATE & CVV
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          margin: EdgeInsets.only(top: 20),
                          child: TextField(
                            style: sfbold.copyWith(
                              color: primaryColor,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'Expiry Date',
                              labelStyle: sfreguler.copyWith(
                                color: Color(0xffA0A3BD),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          margin: EdgeInsets.only(top: 20),
                          child: TextField(
                            style: sfbold.copyWith(
                              color: primaryColor,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'CVV',
                              labelStyle: sfreguler.copyWith(
                                color: Color(0xffA0A3BD),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Remember this card',
                          style: sfbold.copyWith(
                            fontSize: 14,
                            color: grey,
                          ),
                        ),
                        FlutterSwitch(
                          width: 40,
                          height: 20,
                          activeColor: darkBlueColor,
                          value: true,
                          borderRadius: 30.0,
                          onToggle: (val) {
                            setState(() {
                              val = val;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 65,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Flushbar(
                            backgroundColor: Color(0xff17B899),
                            flushbarPosition: FlushbarPosition.TOP,
                            mainButton: Icon(
                              Icons.close,
                              color: backgroundWhite,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 22, vertical: 38),
                            titleText: SizedBox(
                              width: 25,
                            ),
                            message:
                                "Your card has been added successfully to your account.",
                            duration: Duration(seconds: 2),
                          )..show(context);
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: darkBlueColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'Card Number',
                          style: sfreguler.copyWith(
                              fontSize: 15,
                              color: backgroundWhite,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/image_new_card.png',
                    width: 62,
                  ),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add a new Card',
                        style: sfbold.copyWith(
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'We accept Mastercard, Visa and Verve',
                        style: sfbold.copyWith(
                          color: grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_arrow.png',
                        ),
                      ),
                    ),
                  ), // NOTE: ADD A DEBIT CARD
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Divider(
                thickness: 1,
              ),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundWhite,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: backgroundWhite,
          flexibleSpace: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 20),
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
            'Payment method',
            style: sfbold.copyWith(
              fontSize: 18,
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(),
              cards(),
              newCards(),
            ],
          ),
        ),
      ),
    );
  }
}

class CardDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget cards() {
      return Container(
        margin: EdgeInsets.only(top: 35),
        child: Column(
          children: [
            Image.asset(
              'assets/image_visa.png',
              width: 68,
            ),
            SizedBox(height: 20),
            Text(
              '**** **** 8220',
              style: sfreguler,
            ),
            SizedBox(height: 5),
            Text(
              'Mastercard',
              style: sfreguler.copyWith(
                color: grey,
                fontSize: 11,
              ),
            ),
          ],
        ),
      );
    }

    Widget issueBank() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        // padding: EdgeInsets.only(left: 24, right: 24),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Issuer Bank',
                  style: sfbold.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: grey,
                  ),
                ),
                Text(
                  'First Bank of Nigeria',
                  style: sfbold.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: grey,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      );
    }

    Widget addedOn() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        // padding: EdgeInsets.only(left: 24, right: 24),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Added On',
                  style: sfbold.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: grey,
                  ),
                ),
                Text(
                  '4 Feburary 2020',
                  style: sfbold.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: grey,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      );
    }

    Widget expiryDate() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        // padding: EdgeInsets.only(left: 24, right: 24),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Expiry Date',
                  style: sfbold.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: grey,
                  ),
                ),
                Text(
                  '10/2022',
                  style: sfbold.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: grey,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 1,
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
            padding: EdgeInsets.symmetric(
              horizontal: 103,
              vertical: 11,
            ),
            backgroundColor: Color(0xffFFCC7C3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.only(top: 31, right: 22, left: 22),
                    height: 158,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'Delete Card?',
                                style: sfbold.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.close_rounded)),
                          ],
                        ),
                        SizedBox(
                          height: 41,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icon_trash.png',
                              width: 40,
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                Flushbar(
                                  backgroundColor: Color(0xff17B899),
                                  flushbarPosition: FlushbarPosition.TOP,
                                  mainButton: Icon(
                                    Icons.close,
                                    color: backgroundWhite,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 22, vertical: 38),
                                  titleText: SizedBox(
                                    width: 25,
                                  ),
                                  message:
                                      "Your card has been removed successfully from your account.",
                                  duration: Duration(seconds: 1),
                                )..show(context);
                              },
                              child: Text(
                                'Yes, delete Card',
                                style: sfbold.copyWith(
                                  fontSize: 15,
                                  color: primaryColor,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                });
          },
          child: Text(
            'Delete Card',
            style: sfbold.copyWith(
              fontSize: 15,
              color: Color(0xffFF2A52),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundWhite,
        appBar: AppBar(
          backgroundColor: backgroundWhite,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          flexibleSpace: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 20),
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
            'Card Details',
            style: sfbold.copyWith(
              fontSize: 18,
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        bottomNavigationBar: customBottomBar(),
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: [
              cards(),
              issueBank(),
              addedOn(),
              expiryDate(),
            ],
          ),
        ),
      ),
    );
  }
}

// class AddCard extends StatefulWidget {
//   @override
//   _AddCardState createState() => _AddCardState();
// }

// class _AddCardState extends State<AddCard> {
//   bool status = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 22, vertical: 40),
//             child: Stack(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Add a Debit Card',
//                       style: sfsemibold.copyWith(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: primaryColor,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Text(
//                       'AMake sure the debit card belongs to you.',
//                       style: sfsemibold.copyWith(
//                         fontSize: 15,
//                         color: primaryColor,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 39,
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(left: 24, right: 15, top: 7),
//                       width: double.infinity,
//                       height: 40,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: darkBlueColor,
//                         ),
//                         borderRadius: BorderRadius.circular(
//                           10,
//                         ),
//                       ),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: TextFormField(
//                               decoration: InputDecoration.collapsed(
//                                 hintStyle: sfbold.copyWith(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: primaryColor,
//                                 ),
//                                 hintText: '1059 9455 *** ***',
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Image.asset(
//                             'assets/icon_bank.png',
//                             width: 24,
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           padding:
//                               EdgeInsets.only(left: 24, right: 15, top: 10),
//                           width: 161,
//                           height: 40,
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: grey,
//                             ),
//                             borderRadius: BorderRadius.circular(
//                               10,
//                             ),
//                           ),
//                           child: Expanded(
//                             child: TextFormField(
//                               decoration: InputDecoration.collapsed(
//                                 hintStyle: sfbold.copyWith(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: grey,
//                                 ),
//                                 hintText: 'Expiry Date',
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           padding:
//                               EdgeInsets.only(left: 24, right: 15, top: 10),
//                           width: 161,
//                           height: 40,
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: grey,
//                             ),
//                             borderRadius: BorderRadius.circular(
//                               10,
//                             ),
//                           ),
//                           child: Expanded(
//                             child: TextFormField(
//                               decoration: InputDecoration.collapsed(
//                                 hintStyle: sfbold.copyWith(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: grey,
//                                 ),
//                                 hintText: 'CVV',
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Remember this card',
//                           style: sfbold.copyWith(
//                             fontSize: 14,
//                             color: grey,
//                           ),
//                         ),
//                         FlutterSwitch(
//                           width: 40,
//                           height: 20,
//                           activeColor: darkBlueColor,
//                           value: status,
//                           borderRadius: 30.0,
//                           onToggle: (val) {
//                             setState(() {
//                               status = val;
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 65,
//                     ),
//                     Container(
//                       width: double.infinity,
//                       height: 40,
//                       child: TextButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                           Flushbar(
//                             backgroundColor: Color(0xff17B899),
//                             flushbarPosition: FlushbarPosition.TOP,
//                             mainButton: Icon(
//                               Icons.close,
//                               color: backgroundWhite,
//                             ),
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 22, vertical: 38),
//                             titleText: SizedBox(
//                               width: 25,
//                             ),
//                             message:
//                                 "Your card has been added successfully to your account.",
//                             duration: Duration(seconds: 1),
//                           )..show(context);
//                         },
//                         style: TextButton.styleFrom(
//                             backgroundColor: darkBlueColor,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10))),
//                         child: Text(
//                           'Card Number',
//                           style: sfreguler.copyWith(
//                               fontSize: 15,
//                               color: backgroundWhite,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 80, left: 15),
//                   width: 74,
//                   height: 16,
//                   decoration: BoxDecoration(
//                       color: backgroundWhite,
//                       borderRadius: BorderRadius.circular(5)),
//                   child: Center(
//                     child: Text(
//                       'Card Number',
//                       style: sfreguler.copyWith(
//                         fontSize: 12,
//                         color: grey,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool status = false;
  bool status2 = false;
  bool status3 = false;

  bool status4 = false;
  bool status5 = false;
  bool status6 = false;
  bool status7 = false;
  bool status8 = false;
  bool status9 = false;
  bool status10 = false;
  bool status11 = false;
  bool status12 = false;

  @override
  Widget build(BuildContext context) {
    Widget coba() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Message Notifications',
            style: sfbold.copyWith(
              fontSize: 15,
              color: grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Inbox notifications',
                    style: sfbold.copyWith(
                        fontSize: 18,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Get notified on new inbox messages',
                    style: sfbold.copyWith(
                      fontSize: 12,
                      color: grey,
                    ),
                  ),
                ],
              ),
              FlutterSwitch(
                width: 50.19,
                height: 29,
                activeColor: darkBlueColor,
                value: status,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Group notifications',
                    style: sfmedium.copyWith(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Get notified when mentioned in groups',
                    style: sfbold.copyWith(
                      fontSize: 12,
                      color: grey,
                    ),
                  ),
                ],
              ),
              FlutterSwitch(
                width: 50.19,
                height: 29,
                activeColor: darkBlueColor,
                value: status2,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status2 = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email notifications',
                      style: sfbold.copyWith(
                          fontSize: 18,
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Receive Ibloov newsletters and notifications via email',
                      style: sfbold.copyWith(
                        fontSize: 12,
                        color: grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 36,
              ),
              FlutterSwitch(
                width: 50.19,
                height: 29,
                activeColor: darkBlueColor,
                value: status3,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status3 = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Event Notifications',
            style: sfbold.copyWith(
              fontSize: 15,
              color: grey,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New events',
                    style: sfbold.copyWith(
                        fontSize: 18,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Get notified when there’s a new event on the app',
                    style: sfbold.copyWith(
                      fontSize: 12,
                      color: grey,
                    ),
                  ),
                ],
              ),
              FlutterSwitch(
                width: 50.19,
                height: 29,
                activeColor: darkBlueColor,
                value: status4,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status4 = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular locations',
                    style: sfmedium.copyWith(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Get notified of events in hotspot locations',
                    style: sfbold.copyWith(
                      fontSize: 12,
                      color: grey,
                    ),
                  ),
                ],
              ),
              FlutterSwitch(
                width: 50.19,
                height: 29,
                activeColor: darkBlueColor,
                value: status5,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status5 = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Favorite events',
                      style: sfbold.copyWith(
                          fontSize: 18,
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Get notified on events that you like',
                      style: sfbold.copyWith(
                        fontSize: 12,
                        color: grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 36,
              ),
              FlutterSwitch(
                width: 50.19,
                height: 29,
                activeColor: darkBlueColor,
                value: status6,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status6 = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Favorite Organizers',
                    style: sfbold.copyWith(
                        fontSize: 18,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Get updates from your favorite Organizers',
                    style: sfbold.copyWith(
                      fontSize: 12,
                      color: grey,
                    ),
                  ),
                ],
              ),
              FlutterSwitch(
                width: 50.19,
                height: 29,
                activeColor: darkBlueColor,
                value: status7,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status7 = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Followed Organizers',
                    style: sfmedium.copyWith(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Get updates from Organizers you’re following',
                    style: sfbold.copyWith(
                      fontSize: 12,
                      color: grey,
                    ),
                  ),
                ],
              ),
              FlutterSwitch(
                width: 50.19,
                height: 29,
                activeColor: darkBlueColor,
                value: status8,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status8 = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Registered events',
                      style: sfbold.copyWith(
                          fontSize: 18,
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Get notified on events you registered to attend',
                      style: sfbold.copyWith(
                        fontSize: 12,
                        color: grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 36,
              ),
              FlutterSwitch(
                width: 50.19,
                height: 29,
                activeColor: darkBlueColor,
                value: status10,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status10 = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Event invites',
                    style: sfbold.copyWith(
                        fontSize: 18,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Get notified on events invites',
                    style: sfbold.copyWith(
                      fontSize: 12,
                      color: grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 36,
              ),
              FlutterSwitch(
                width: 50.19,
                height: 29,
                activeColor: darkBlueColor,
                value: status11,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status11 = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Profile Notifications',
            style: sfbold.copyWith(
              fontSize: 15,
              color: grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Friend requests',
                    style: sfbold.copyWith(
                        fontSize: 18,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Get notified on new friend requests',
                    style: sfbold.copyWith(
                      fontSize: 12,
                      color: grey,
                    ),
                  ),
                ],
              ),
              FlutterSwitch(
                width: 50.19,
                height: 29,
                activeColor: darkBlueColor,
                value: status12,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status12 = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Reset Notifications Settings',
            style: sfbold.copyWith(
                fontSize: 18,
                color: Color(0xffFF2A52),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Reset all notification settings, including custom notifications for your chat',
            style: sfbold.copyWith(
              fontSize: 12,
              color: grey,
            ),
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundWhite,
        appBar: AppBar(
          backgroundColor: backgroundWhite,
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'GoBack',
                style: sfbold.copyWith(
                  fontSize: 15,
                  color: grey,
                ),
              ),
            ),
          ),
          title: Text(
            'Notifications',
            style: sfbold.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 20,
          ),
          child: ListView(
            children: [
              coba(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            height: 70,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: darkBlueColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Flushbar(
                    backgroundColor: Color(0xff17B899),
                    flushbarPosition: FlushbarPosition.TOP,
                    mainButton: Icon(
                      Icons.close,
                      color: backgroundWhite,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 38),
                    titleText: SizedBox(
                      width: 25,
                    ),
                    message: "Your Notifications has been updated Successfully",
                    duration: Duration(seconds: 2),
                  )..show(context);
                },
                child: Text(
                  'Update Notifications',
                  style: sfsemibold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: backgroundWhite,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ConnectedAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget text() {
      return Container(
        margin: EdgeInsets.only(top: 26),
        child: Text(
          'Connect your social media accounts to Ibloolv. You don’t have to add them all.',
          style: sfreguler.copyWith(
            fontSize: 15,
            color: grey,
          ),
        ),
      );
    }

    Widget twitterInput() {
      return Container(
        margin: EdgeInsets.only(top: 26),
        child: TextField(
          style: sfbold.copyWith(
            color: primaryColor,
          ),
          decoration: InputDecoration(
            prefixIcon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 24,
                right: 18,
              ),
              child: Image.asset(
                'assets/icon_twitter.png',
                width: 24,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: 'Twitter',
            labelStyle: sfbold.copyWith(
              color: Color(0xffA0A3BD),
            ),
          ),
        ),
      );
    }

    Widget facebookInput() {
      return Container(
        margin: EdgeInsets.only(top: 26),
        child: TextField(
          style: sfbold.copyWith(
            color: primaryColor,
          ),
          decoration: InputDecoration(
            prefixIcon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 24,
                right: 18,
              ),
              child: Image.asset(
                'assets/icon_facebook.png',
                width: 24,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: 'Facebook',
            labelStyle: sfbold.copyWith(
              color: Color(0xffA0A3BD),
            ),
          ),
        ),
      );
    }

    Widget instagramInput() {
      return Container(
        margin: EdgeInsets.only(top: 26),
        child: TextField(
          style: sfbold.copyWith(
            color: primaryColor,
          ),
          decoration: InputDecoration(
            prefixIcon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 24,
                right: 18,
              ),
              child: Image.asset(
                'assets/icon_instagram.png',
                width: 24,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: 'Instagram',
            labelStyle: sfbold.copyWith(
              color: Color(0xffA0A3BD),
            ),
          ),
        ),
      );
    }

    Widget youtubeInput() {
      return Container(
        margin: EdgeInsets.only(top: 26),
        child: TextField(
          style: sfbold.copyWith(
            color: primaryColor,
          ),
          decoration: InputDecoration(
            prefixIcon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 24,
                right: 18,
              ),
              child: Image.asset(
                'assets/icon_youtube.png',
                width: 24,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: 'Youtube',
            labelStyle: sfbold.copyWith(
              color: Color(0xffA0A3BD),
            ),
          ),
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

class AboutTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget text() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Text(
          'Terms Effective Date: January 10, 2019',
          style: sfbold.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xff858585),
          ),
        ),
      );
    }

    Widget desc() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1.1: Purpose',
              style: sfbold.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff858585),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Est ultricies integer quis auctor elit sed vulputate mi. Tincidunt dui ut ornare lectus sit. At elementum eu facilisis sed. Velit laoreet id donec ultrices tincidunt arcu non sodales neque. Bibendum neque egestas congue quisque egestas diam in. Sed vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Sed libero enim sed faucibus turpis in eu mi bibendum. Felis imperdiet proin fermentum leo. Volutpat ac tincidunt vitae semper quis lectus nulla at volutpat. Nulla at volutpat diam ut venenatis. Duis convallis convallis tellus id interdum velit laoreet id. A iaculis at erat pellentesque.',
              style: sfbold.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: primaryColor,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Est ultricies integer quis auctor elit sed vulputate mi. Tincidunt dui ut ornare lectus sit. At elementum eu facilisis sed. Velit laoreet id donec ultrices tincidunt arcu non sodales neque. Bibendum neque egestas congue quisque egestas diam in. Sed vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Sed libero enim sed faucibus turpis in eu mi bibendum. Felis imperdiet proin fermentum leo. Volutpat ac tincidunt vitae semper quis lectus nulla at volutpat. Nulla at volutpat diam ut venenatis. Duis convallis convallis tellus id interdum velit laoreet id. A iaculis at erat pellentesque.',
              style: sfbold.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: primaryColor,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundWhite,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: backgroundWhite,
          centerTitle: true,
          title: Text(
            'Terms & Conditions',
            style: sfbold.copyWith(
              fontSize: 18,
              color: primaryColor,
            ),
          ),
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
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              text(),
              desc(),
            ],
          ),
        ),
      ),
    );
  }
}

class FaqsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget search() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 22,
          right: 22,
        ),
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffEFEFEF),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
            ),
            SizedBox(
              width: 13,
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Search for keywords',
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 80,
          left: 22,
          right: 22,
        ),
        child: ContainedTabBarView(
          tabBarProperties: TabBarProperties(
            labelPadding: EdgeInsets.symmetric(horizontal: 10),
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            height: 50,
            indicatorColor: darkBlueColor,
            indicatorWeight: 6.0,
            labelColor: primaryColor,
            unselectedLabelColor: Colors.grey[400],
          ),
          tabs: [
            Text('All'),
            Text('Event Registration', textAlign: TextAlign.center),
            Text('Booking'),
            Text('Tickets'),
            Text(
              'Refer friends',
              textAlign: TextAlign.center,
            ),
          ],
          views: [
            ListView(
              children: [
                All(),
                All(),
                All(),
                All(),
                All(),
                All(),
              ],
            ),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      );
    }

    Widget body() {
      return Stack(
        children: [
          search(),
          content(),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundWhite,
        appBar: AppBar(
          backgroundColor: backgroundWhite,
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          flexibleSpace: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'GoBack',
                style: sfbold.copyWith(
                  fontSize: 15,
                  color: grey,
                ),
              ),
            ),
          ),
          title: Text(
            'FAQs',
            style: sfbold.copyWith(
              fontSize: 18,
              color: primaryColor,
            ),
          ),
        ),
        body: body(),
      ),
    );
  }
}

class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 30,
          ),
          child: ExpansionTileCard(
            expandedColor: blueColor.withOpacity(0.5),
            expandedTextColor: primaryColor,
            title: Text(
              'What is Ibloov?',
              style: sfbold.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    'Ibloov is a social event management platform for people to create, search for, and attend events around the world.',
                    style: sfbold.copyWith(
                      fontSize: 12,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

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
                style: sfbold.copyWith(
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
              style: sfbold.copyWith(
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
        margin: EdgeInsets.only(top: 60),
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
        margin: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Text(
              'Get 3% discount on tickets',
              style: sfbold.copyWith(
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
              style: sfbold.copyWith(
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
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Your Referral Link',
              style: sfsemibold.copyWith(
                color: primaryColor,
              ),
            ),
            Container(
              width: double.infinity,
              height: 51,
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(
                left: 22,
              ),
              decoration: BoxDecoration(
                color: backgroundLinear,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'https://:ibloov.com/jackyln',
                    style: sfbold.copyWith(
                      color: primaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Copy',
                      style: sfbold.copyWith(
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
        margin: EdgeInsets.only(top: 40),
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
            style: sfbold.copyWith(
              fontSize: 15,
              color: backgroundWhite,
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
          margin: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
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
