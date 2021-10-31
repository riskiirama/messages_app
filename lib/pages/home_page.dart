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
              Spacer(),
              GestureDetector(
                onTap: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1930),
                      lastDate: DateTime(2100));
                },
                child: Text(
                  // ignore: unnecessary_null_comparison
                  'Tuesday, 21 Jul',
                  style: sfreguler.copyWith(
                    fontSize: 15,
                    color: primaryColor,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                },
                child: Text(
                  '18:00',
                  style: sfreguler.copyWith(
                    fontSize: 15,
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
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
              Spacer(),
              GestureDetector(
                onTap: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1930),
                      lastDate: DateTime(2100));
                },
                child: Text(
                  // ignore: unnecessary_null_comparison
                  'Tuesday, 21 Jul',
                  style: sfreguler.copyWith(
                    fontSize: 15,
                    color: primaryColor,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                },
                child: Text(
                  '18:00',
                  style: sfreguler.copyWith(
                    fontSize: 15,
                    color: primaryColor,
                  ),
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
          SizedBox(
            height: 30,
          ),
        ],
      );
    }

    Widget sectionMaps() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Location',
            style: sfreguler.copyWith(
              fontSize: 15,
              color: primaryColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18),
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
                Image.asset(
                  'assets/maps-icon.png',
                ),
                SizedBox(
                  width: 12,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              child: Row(
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child:
                                          Icon(Icons.arrow_back_ios, size: 14)),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Done',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  //   showModalBottomSheet<void>(
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.vertical(
                  //         top: Radius.circular(10),
                  //       ),
                  //     ),
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return Container(
                  //         padding: EdgeInsets.only(
                  //             bottom: MediaQuery.of(context).viewInsets.bottom),
                  //         margin: EdgeInsets.only(top: 20, right: 22, left: 22),
                  //         height: 700,
                  //         child: ListView(
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.start,
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Expanded(
                  //                   child: Column(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.start,
                  //                     children: [
                  //                       Text(
                  //                         'Add Location',
                  //                         style: sfbold.copyWith(
                  //                           fontSize: 16,
                  //                           fontWeight: FontWeight.bold,
                  //                           color: primaryColor,
                  //                         ),
                  //                       ),
                  //                       SizedBox(
                  //                         height: 8,
                  //                       ),
                  //                       // Text(
                  //                       //   'Make sure the debit card belongs to you.',
                  //                       //   style: sfreguler.copyWith(
                  //                       //     fontSize: 15,
                  //                       //     color: Color(0xff505050),
                  //                       //   ),
                  //                       // ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //                 GestureDetector(
                  //                     onTap: () {
                  //                       Navigator.pop(context);
                  //                     },
                  //                     child: Icon(Icons.close_rounded)),
                  //               ],
                  //             ),
                  //             SizedBox(
                  //               height: 240,
                  //             ),
                  //             Container(
                  //               width: double.infinity,
                  //               height: 50,
                  //               child: TextButton(
                  //                 onPressed: () {
                  //                   Navigator.pop(context);
                  //                   // Flushbar(
                  //                   //   backgroundColor: Color(0xff17B899),
                  //                   //   flushbarPosition: FlushbarPosition.TOP,
                  //                   //   mainButton: Icon(
                  //                   //     Icons.close,
                  //                   //     color: backgroundWhite,
                  //                   //   ),
                  //                   //   padding: EdgeInsets.symmetric(
                  //                   //       horizontal: 22, vertical: 38),
                  //                   //   titleText: SizedBox(
                  //                   //     width: 25,
                  //                   //   ),
                  //                   //   message:
                  //                   //       "Your card has been added successfully to your account.",
                  //                   //   duration: Duration(seconds: 2),
                  //                   // )..show(context);
                  //                 },
                  //                 style: TextButton.styleFrom(
                  //                     backgroundColor: darkBlueColor,
                  //                     shape: RoundedRectangleBorder(
                  //                         borderRadius:
                  //                             BorderRadius.circular(10))),
                  //                 child: Text(
                  //                   'Done',
                  //                   style: sfreguler.copyWith(
                  //                       fontSize: 15,
                  //                       color: backgroundWhite,
                  //                       fontWeight: FontWeight.bold),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   );
                  // },
                  child: Text(
                    'Add location',
                    style: sfreguler.copyWith(
                      fontSize: 15,
                      color: primaryColor.withOpacity(0.5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      );
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

    Widget buttonNext() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        width: 176,
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: darkBlueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Step2()));
          },
          child: Text(
            'Next Step',
            style: sfsemibold.copyWith(
              fontSize: 15,
              color: backgroundWhite,
            ),
          ),
        ),
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
            buttonNext(),
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
  bool put = false;
  bool allow = false;
  bool isChecked = false;

  RangeValues values = RangeValues(1, 100);
  RangeLabels labels = RangeLabels('1', '100');

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
          RangeSlider(
            activeColor: darkBlueColor,
            min: 1,
            max: 100,
            values: values,
            labels: labels,
            onChanged: (value) {
              print('START : ${value.start}, END: ${value.end}');
              setState(() {
                values = value;
                labels = RangeLabels(
                  value.start.toString(),
                  value.end.toString(),
                );
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
            'Hashtags',
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
                                    'Hashtags',
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
                                    '#GirlsNightOut',
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
                                    '#GirlsRunTheWorld',
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
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: darkBlueColor,
                                        width: 3,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: darkBlueColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Add New Hashtag',
                                    style: sfsemibold.copyWith(
                                      fontSize: 18,
                                      color: darkBlueColor,
                                    ),
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
                      hintText: 'Search Friends',
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
                              horizontal: 10, vertical: 20),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                child: Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(Icons.arrow_back_ios,
                                            size: 14)),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Done',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ListTile(
                                leading: Image.asset(
                                  'assets/image_photo2.png',
                                ),
                                title: Text('Linda Uchendu'),
                              ),
                              const SizedBox(
                                height: 20,
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
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 90,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 22, vertical: 23),
              width: 176,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: darkBlueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Step3()));
                },
                child: Text(
                  'Next Step',
                  style: sfsemibold.copyWith(
                    fontSize: 15,
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

class Step3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    'Step 3 of 3',
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ticket Limit',
                  style: sfreguler.copyWith(
                    fontSize: 15,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 23,
                  ),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: primaryColor.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'e.g  500',
                      style: sfreguler.copyWith(
                        fontSize: 15,
                        color: primaryColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Type  ‘0’ if there is no limit ',
                  style: sfbold.copyWith(
                    fontSize: 13,
                    color: darkBlueColor,
                  ),
                ),
                SizedBox(
                  height: 41,
                ),
                Text(
                  'Ticket Type',
                  style: sfreguler.copyWith(
                    fontSize: 15,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  width: double.infinity,
                  height: 119,
                  decoration: BoxDecoration(
                    color: blueColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'You currently have no ticket type.\nClick button below too add new type ',
                      style: sfmedium.copyWith(
                        fontSize: 13,
                        color: grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 176,
                    height: 42,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            margin: EdgeInsets.symmetric(
                                horizontal: 22, vertical: 15),
                            child: ListView(
                              children: [
                                Center(
                                  child: Container(
                                    width: 52,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: primaryColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 26,
                                ),
                                Text(
                                  'Add New Ticket Type',
                                  style: sfbold.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: darkBlueColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 43,
                                ),
                                Text(
                                  'Ticket Type Title',
                                  style: sfreguler.copyWith(
                                    fontSize: 15,
                                    color: primaryColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: 'e.g Regular',
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Ticket Type  Price',
                                  style: sfreguler.copyWith(
                                    fontSize: 15,
                                    color: primaryColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: 'e.g \$10',
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 50,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: darkBlueColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Save Ticket Type',
                                      style: sfsemibold.copyWith(
                                        fontSize: 15,
                                        color: backgroundWhite,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Add New Ticket type',
                        style: sfsemibold.copyWith(
                          fontSize: 15,
                          color: grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 90,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 22, vertical: 23),
              width: 176,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: darkBlueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlertEvent()));
                },
                child: Text(
                  'Finish Create Event',
                  style: sfsemibold.copyWith(
                    fontSize: 15,
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

class AlertEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 22),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/feedback.png',
              ),
              SizedBox(
                height: 33,
              ),
              Text(
                'Event Created \nSuccessfully!',
                style: sfbold.copyWith(
                  fontSize: 22,
                  color: primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                'Hurray! Your event has been created\n successfully, and your friends will be notified',
                style: sfreguler.copyWith(
                  fontSize: 15,
                  color: primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 175,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 22, vertical: 15),
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/logo.png',
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: primaryColor.withOpacity(0.1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.close,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Divider(),
                              SizedBox(
                                height: 21,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(
                                              'assets/image_photo2.png',
                                              width: 60,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 42,
                                                left: 43,
                                              ),
                                              child: Image.asset(
                                                'assets/messenger.png',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Hugo \nCollins',
                                          style: sfreguler.copyWith(
                                            fontSize: 11,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(
                                              'assets/image_photo.png',
                                              width: 60,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 42,
                                                left: 43,
                                              ),
                                              child: Image.asset(
                                                'assets/wa.png',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Hugo \nCollins',
                                          style: sfreguler.copyWith(
                                            fontSize: 11,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(
                                              'assets/image_photo3.png',
                                              width: 60,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 42,
                                                left: 43,
                                              ),
                                              child: Image.asset(
                                                'assets/im.png',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Hugo \nCollins',
                                          style: sfreguler.copyWith(
                                            fontSize: 11,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(
                                              'assets/image_photo2.png',
                                              width: 60,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 42,
                                                left: 43,
                                              ),
                                              child: Image.asset(
                                                'assets/messenger.png',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Hugo \nCollins',
                                          style: sfreguler.copyWith(
                                            fontSize: 11,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(
                                              'assets/image_photo2.png',
                                              width: 60,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 42,
                                                left: 43,
                                              ),
                                              child: Image.asset(
                                                'assets/messenger.png',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Hugo \nCollins',
                                          style: sfreguler.copyWith(
                                            fontSize: 11,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Divider(),
                              SizedBox(
                                height: 20,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/message-l.png',
                                      width: 60,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'assets/mail-l.png',
                                      width: 60,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'assets/message-white.png',
                                      width: 60,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'assets/wa-l.png',
                                      width: 60,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'assets/twiter-l.png',
                                      width: 60,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: backgroundWhite,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: primaryColor,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'copy',
                                      style: sfreguler.copyWith(
                                        color: primaryColor,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/copy.png',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: darkBlueColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Share Event Link',
                      style: sfsemibold.copyWith(
                        fontSize: 15,
                        color: darkBlueColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: darkBlueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Back to Home',
                      style: sfsemibold.copyWith(
                        fontSize: 15,
                        color: backgroundWhite,
                      ),
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
