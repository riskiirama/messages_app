part of 'widget.dart';

class DmOrganizer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  color: darkBlueColor,
                ),
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Send a message to the Event Organizer',
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Make enquiries, or ask for more details about this event. Remember to keep it professional.',
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset(
                    'assets/image_photo4.png',
                    width: 59,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Smade Club ',
                        style: sfbold,
                      ),
                      Text(
                        'Event Organizer',
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 28, right: 30),
                width: double.infinity,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xffEFEFEF),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Hi there, I’ll like to make an enquiry about the Burna Boy “LIVE” Concert. I’m also interested in sponsoring the event as well. ',
                      style: sfreguler.copyWith(
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Please let me know when is a great time to talk. Thank you.',
                      style: sfreguler.copyWith(
                        color: primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                height: 51,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: darkBlueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: Text(
                    'Send Message',
                    style: sfbold.copyWith(
                      color: backgroundWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
