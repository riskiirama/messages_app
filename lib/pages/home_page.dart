part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value = 0;
  bool status = false;

  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('failed $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget section01() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //todo title
          Text(
            'Title',
            style: sfreguler.copyWith(
              fontSize: 15,
              color: primaryColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 18),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: primaryColor.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintStyle: sfreguler.copyWith(
                  fontSize: 15,
                ),
                hintText: 'Event title',
              ),
            ),
          ),

          //todo category
          SizedBox(
            height: 24,
          ),
          Text(
            'Category',
            style: sfreguler.copyWith(
              fontSize: 15,
              color: primaryColor,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () => setState(() => _value = 0),
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 105,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: grey),
                      color: _value == 0 ? darkBlueColor : Colors.transparent,
                    ),
                    padding:
                        EdgeInsets.only(left: 11, right: 18, top: 5, bottom: 5),
                    child: Row(
                      children: [
                        (_value == 0)
                            ? Image.asset(
                                'assets/party2.png',
                                width: 17,
                              )
                            : Image.asset(
                                'assets/party.png',
                                width: 17,
                              ),
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          'Party',
                          style: (_value == 0)
                              ? sfreguler.copyWith(
                                  color: backgroundWhite,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )
                              : sfreguler.copyWith(
                                  color: grey,
                                  fontSize: 15,
                                ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => _value = 1),
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 105,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: grey),
                      color: _value == 1 ? darkBlueColor : Colors.transparent,
                    ),
                    padding:
                        EdgeInsets.only(left: 11, right: 18, top: 5, bottom: 5),
                    child: Row(
                      children: [
                        (_value == 1)
                            ? Image.asset(
                                'assets/sport2.png',
                                width: 17,
                              )
                            : Image.asset(
                                'assets/sport.png',
                                width: 17,
                              ),
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          'Sport',
                          style: (_value == 1)
                              ? sfreguler.copyWith(
                                  color: backgroundWhite,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )
                              : sfreguler.copyWith(
                                  color: grey,
                                  fontSize: 15,
                                ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => _value = 2),
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 105,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: grey),
                      color: _value == 2 ? darkBlueColor : Colors.transparent,
                    ),
                    padding:
                        EdgeInsets.only(left: 11, right: 18, top: 5, bottom: 5),
                    child: Row(
                      children: [
                        (_value == 2)
                            ? Image.asset(
                                'assets/movie2.png',
                                width: 17,
                              )
                            : Image.asset(
                                'assets/movie.png',
                                width: 17,
                              ),
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          'Movie',
                          style: (_value == 2)
                              ? sfreguler.copyWith(
                                  color: backgroundWhite,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )
                              : sfreguler.copyWith(
                                  color: grey,
                                  fontSize: 15,
                                ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Event Date & Time',
            style: sfreguler.copyWith(
              fontSize: 15,
              color: primaryColor,
            ),
          ),
          SizedBox(
            height: 22,
          ),
        ],
      );
    }

    Widget sectionDate() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //todo date time
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Text(
                  'Start',
                  style: sfreguler.copyWith(
                    fontSize: 15,
                    color: grey,
                  ),
                ),
              ),
              Text(
                'p',
                style: sfreguler.copyWith(
                  fontSize: 15,
                  color: primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Text(
                  'End',
                  style: sfreguler.copyWith(
                    fontSize: 15,
                    color: grey,
                  ),
                ),
              ),
              Text(
                'p',
                style: sfreguler.copyWith(
                  fontSize: 15,
                  color: primaryColor,
                ),
              ),
            ],
          ),

          //todo all day
          SizedBox(
            height: 22,
          ),
          Row(
            children: [
              Icon(Icons.access_time_rounded),
              SizedBox(
                width: 14,
              ),
              Text(
                'All day',
                style: sfreguler.copyWith(
                  fontSize: 15,
                ),
              ),
              Spacer(),
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
        ],
      );
    }

    Widget sectionMaps() {
      return Container();
    }

    Widget sectionDesc() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //todo desc
          SizedBox(
            height: 30,
          ),
          Text(
            'Event Description',
            style: sfreguler.copyWith(
              fontSize: 15,
              color: primaryColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            maxLines: 8,
            maxLength: 150,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintStyle: sfreguler.copyWith(fontSize: 15),
              hintText: 'Enter description ...',
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      );
    }

    Widget sectionImage() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Upload Image',
            style: sfreguler.copyWith(
              fontSize: 15,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 18),
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              border: Border.all(color: blueColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/imgpic.png',
                  width: 37,
                ),
                TextButton(
                  onPressed: () => pickImage(),
                  child: Text(
                    'Click to add photo',
                    style: sfreguler.copyWith(
                      fontSize: 13,
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundWhite,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: backgroundWhite,
            title: Container(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Go Back',
                    style: sfbold.copyWith(
                      fontSize: 15,
                      color: grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Step2()));
                    },
                    child: Icon(
                      Icons.navigate_next,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            flexibleSpace: Container(
              margin: EdgeInsets.only(
                  top: 65, left: defaultMargin, right: defaultMargin),
              child: Row(
                children: [
                  Image.asset(
                    'assets/event.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      'Create Event',
                      style: sfbold.copyWith(
                        fontSize: 18,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Text(
                    'Step 1 of 3',
                    style: sfsemibold.copyWith(
                      fontSize: 15,
                      color: grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          padding:
              EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 24),
          children: [
            section01(),
            sectionDate(),
            sectionMaps(),
            sectionDesc(),
            sectionImage(),
          ],
        ),
      ),
    );
  }
}

class Step2 extends StatefulWidget {
  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  double _currentSliderValue = 0;
  bool put = false;
  bool allow = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.blue;
    }

    Widget eventConditions() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Event Conditions',
            style: sfreguler.copyWith(
              fontSize: 15,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: primaryColor.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 18,
                    right: 13,
                  ),
                  child: Image.asset(
                    'assets/conditions.png',
                    width: 24,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Conditions',
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 5,
                  ),
                  width: 58,
                  height: 40,
                  child: TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 22, vertical: 15),
                          child: Column(
                            children: [
                              Container(
                                width: 52,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(
                                height: 33,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Categories',
                                    style: sfbold.copyWith(
                                      fontSize: 18,
                                      color: grey,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Done',
                                      style: sfreguler.copyWith(
                                        fontSize: 18,
                                        color: blueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 29,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'No children',
                                    style: sfreguler.copyWith(
                                      fontSize: 15,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Checkbox(
                                    checkColor: Colors.white,
                                    fillColor:
                                        MaterialStateProperty.resolveWith(
                                            getColor),
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Children only',
                                    style: sfreguler.copyWith(
                                      fontSize: 15,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Checkbox(
                                    checkColor: Colors.white,
                                    fillColor:
                                        MaterialStateProperty.resolveWith(
                                            getColor),
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor.withOpacity(0.2),
                    ),
                    child: Text(
                      'Add',
                      style: sfsemibold.copyWith(
                        fontSize: 15,
                        color: grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 111,
                height: 42,
                decoration: BoxDecoration(
                  color: blueColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Women only',
                    style: sfreguler.copyWith(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Container(
                width: 111,
                height: 42,
                decoration: BoxDecoration(
                  color: blueColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Women only',
                    style: sfreguler.copyWith(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
        ],
      );
    }

    Widget ageLimit() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Age limit',
            style: sfreguler.copyWith(
              fontSize: 15,
              color: primaryColor,
            ),
          ),
          Slider(
            inactiveColor: primaryColor.withOpacity(0.2),
            activeColor: darkBlueColor,
            value: _currentSliderValue,
            min: 0,
            max: 100,
            divisions: 100,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          SizedBox(
            height: 12,
          ),
        ],
      );
    }

    Widget hastag() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Event Conditions',
            style: sfreguler.copyWith(
              fontSize: 15,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: primaryColor.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 18,
                    right: 13,
                  ),
                  child: Image.asset(
                    'assets/hastag.png',
                    width: 15,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Add hashtages',
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 5,
                  ),
                  width: 58,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor.withOpacity(0.2),
                    ),
                    child: Text(
                      'Add',
                      style: sfsemibold.copyWith(
                        fontSize: 15,
                        color: grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 111,
                height: 42,
                decoration: BoxDecoration(
                  color: blueColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '#GirlsNightOut',
                    style: sfreguler.copyWith(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Container(
                width: 111,
                height: 42,
                decoration: BoxDecoration(
                  color: blueColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '#GirlsRock',
                    style: sfreguler.copyWith(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
        ],
      );
    }

    Widget publicEvent() {
      return Column(
        children: [
          SwitchListTile(
            activeColor: darkBlueColor,
            title: Text(
              'Public event?',
              style: sfreguler.copyWith(
                fontSize: 15,
                color: primaryColor,
              ),
            ),
            value: put,
            onChanged: (bool value) {
              setState(() {
                put = value;
              });
            },
            secondary: Image.asset(
              'assets/earth.png',
              width: 24,
            ),
          ),
          SwitchListTile(
            activeColor: darkBlueColor,
            title: Text(
              'Allow +1',
              style: sfreguler.copyWith(
                fontSize: 15,
                color: primaryColor,
              ),
            ),
            value: allow,
            onChanged: (bool value) {
              setState(() {
                allow = value;
              });
            },
            secondary: Image.asset(
              'assets/plus1.png',
              width: 24,
            ),
          ),
        ],
      );
    }

    Widget inviteFriends() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Invite friends',
            style: sfreguler.copyWith(
              fontSize: 15,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: primaryColor.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Add hashtages',
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 5,
                  ),
                  width: 58,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor.withOpacity(0.2),
                    ),
                    child: Text(
                      'Add',
                      style: sfsemibold.copyWith(
                        fontSize: 15,
                        color: grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/image_photo3.png',
                    width: 52,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Image.asset(
                      'assets/image_photo2.png',
                      width: 52,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 65),
                    child: Image.asset(
                      'assets/image_photo.png',
                      width: 52,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blueColor.withOpacity(0.2),
                ),
                child: Center(
                  child: Text(
                    '+3',
                    style: sfreguler.copyWith(
                      fontSize: 15,
                      color: grey,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundWhite,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: backgroundWhite,
            title: Container(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Go Back',
                      style: sfbold.copyWith(
                        fontSize: 15,
                        color: grey,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Step2()));
                    },
                    child: Icon(
                      Icons.navigate_next,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            flexibleSpace: Container(
              margin: EdgeInsets.only(
                  top: 65, left: defaultMargin, right: defaultMargin),
              child: Row(
                children: [
                  Image.asset(
                    'assets/event.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      'Create Event',
                      style: sfbold.copyWith(
                        fontSize: 18,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Text(
                    'Step 2 of 3',
                    style: sfsemibold.copyWith(
                      fontSize: 15,
                      color: grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          padding:
              EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 24),
          children: [
            eventConditions(),
            ageLimit(),
            hastag(),
            publicEvent(),
            inviteFriends(),
          ],
        ),
      ),
    );
  }
}
