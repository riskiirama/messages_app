part of 'terms.dart';

class AboutTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(left: 20),
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
              width: 60,
            ),
            Text(
              'Terms & Conditions',
              style: textBold.copyWith(
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
        margin: EdgeInsets.only(top: 14, left: 22),
        child: Text(
          'Terms Effective Date: January 10, 2019',
          style: textBold.copyWith(
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
              style: textBold.copyWith(
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
              style: textBold.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: primaryColor,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Est ultricies integer quis auctor elit sed vulputate mi. Tincidunt dui ut ornare lectus sit. At elementum eu facilisis sed. Velit laoreet id donec ultrices tincidunt arcu non sodales neque. Bibendum neque egestas congue quisque egestas diam in. Sed vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Sed libero enim sed faucibus turpis in eu mi bibendum. Felis imperdiet proin fermentum leo. Volutpat ac tincidunt vitae semper quis lectus nulla at volutpat. Nulla at volutpat diam ut venenatis. Duis convallis convallis tellus id interdum velit laoreet id. A iaculis at erat pellentesque.',
              style: textBold.copyWith(
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

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundWhite,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            text(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  desc(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
