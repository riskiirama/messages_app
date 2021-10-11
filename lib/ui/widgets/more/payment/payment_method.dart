part of 'payment.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool status = false;
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
              'Payment method',
              style: sfbold.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

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
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 22, vertical: 40),
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Add a Debit Card',
                                        style: sfsemibold.copyWith(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: primaryColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'AMake sure the debit card belongs to you.',
                                        style: sfsemibold.copyWith(
                                          fontSize: 15,
                                          color: primaryColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 39,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 24, right: 15, top: 7),
                                        width: double.infinity,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: darkBlueColor,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                decoration:
                                                    InputDecoration.collapsed(
                                                  hintStyle: sfbold.copyWith(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: primaryColor,
                                                  ),
                                                  hintText: '1059 9455 *** ***',
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Image.asset(
                                              'assets/icon_bank.png',
                                              width: 24,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 24, right: 15, top: 10),
                                            width: 161,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
                                              ),
                                            ),
                                            child: Expanded(
                                              child: TextFormField(
                                                decoration:
                                                    InputDecoration.collapsed(
                                                  hintStyle: sfbold.copyWith(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: grey,
                                                  ),
                                                  hintText: 'Expiry Date',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 24, right: 15, top: 10),
                                            width: 161,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
                                              ),
                                            ),
                                            child: Expanded(
                                              child: TextFormField(
                                                decoration:
                                                    InputDecoration.collapsed(
                                                  hintStyle: sfbold.copyWith(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: grey,
                                                  ),
                                                  hintText: 'CVV',
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                        height: 65,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 40,
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            showTopSnackBar(
                                              context,
                                              CustomSnackBar.success(
                                                backgroundColor:
                                                    Color(0xff17B899),
                                                message:
                                                    "Your card has been added successfully to your account.",
                                              ),
                                            );
                                          },
                                          style: TextButton.styleFrom(
                                              backgroundColor: darkBlueColor,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
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
                                  Container(
                                    margin: EdgeInsets.only(top: 80, left: 15),
                                    width: 74,
                                    height: 16,
                                    decoration: BoxDecoration(
                                        color: backgroundWhite,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Text(
                                        'Card Number',
                                        style: sfreguler.copyWith(
                                          fontSize: 13,
                                          color: grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Container(
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

    return Scaffold(
      backgroundColor: backgroundWhite,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
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
