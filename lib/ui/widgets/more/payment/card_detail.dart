part of 'payment.dart';

class CardDetail extends StatelessWidget {
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
              'Card Details',
              style: sfbold.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget cards() {
      return Container(
        margin: EdgeInsets.only(top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_visa.png',
              width: 68,
            ),
            SizedBox(height: 20),
            Text(
              '**** **** 8220',
              style: sfbold.copyWith(
                color: primaryColor,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Mastercard',
              style: sfbold.copyWith(
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
          onPressed: () {},
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

    return Scaffold(
      bottomNavigationBar: customBottomBar(),
      backgroundColor: backgroundWhite,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              header(),
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
