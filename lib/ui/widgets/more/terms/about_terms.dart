part of 'terms.dart';

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
