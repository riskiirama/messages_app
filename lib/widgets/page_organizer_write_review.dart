part of 'widget.dart';

class WriteMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundWhite,
      appBar: AppBar(
          backgroundColor: Color(0xffFAFAFA),
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: sfbold.copyWith(
                    fontSize: 17,
                    color: blueColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Write a Review',
                style: sfbold.copyWith(
                  fontSize: 17,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FeedbackSuccess();
                  }));
                },
                child: Text(
                  'Send',
                  style: sfbold.copyWith(
                    fontSize: 17,
                    color: blueColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )),
      body: Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 15,
        ),
        child: Column(
          children: [
            Center(
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: blueColor,
                  size: 18,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Tap star to Rate',
              style: sfbold.copyWith(
                fontSize: 17,
                color: Color(0xff505050),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration:
                  InputDecoration.collapsed(hintText: 'Write review here'),
            ),
          ],
        ),
      ),
    );
  }
}
