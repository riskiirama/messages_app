part of '../pages/pages.dart';

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
                  showTopSnackBar(
                    context,
                    CustomSnackBar.success(
                      backgroundColor: Color(0xff17B899),
                      message:
                          "Your Notifications has been updated Successfully",
                    ),
                  );
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
