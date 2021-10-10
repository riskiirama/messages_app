part of 'payment.dart';

class PaymentMethod extends StatelessWidget {
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
