part of 'widget.dart';

class FeedbackSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/feedback.png',
              width: 92,
            ),
            SizedBox(
              height: 33,
            ),
            Text(
              'Review sent!',
              style: sfbold.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            SizedBox(
              height: 37,
            ),
            Text(
              'Thank you for sharing your review',
              style: sfbold.copyWith(
                fontSize: 15,
                color: primaryColor,
              ),
            ),
            SizedBox(
              height: 189,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              width: double.infinity,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: darkBlueColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Back',
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: backgroundWhite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
