part of '../pages/pages.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    Widget coba() {
      return Row(
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
                  fontSize: 15,
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
      );
    }

    return Scaffold(
      backgroundColor: backgroundWhite,
      appBar: AppBar(
        backgroundColor: backgroundWhite,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
              top: 2,
              left: 22,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Go Back',
                style: sfbold.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: grey,
                ),
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
            coba(),
          ],
        ),
      ),
    );
  }
}
