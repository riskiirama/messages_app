part of 'widget.dart';

class AddNewMessagePage extends StatelessWidget {
  final bool isCeklis = false;
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 100,
              right: 5,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  Text(
                    'A',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'B',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'C',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'D',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'E',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'F',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'G',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'H',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'I',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'J',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'K',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'L',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'M',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'N',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'O',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'P',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Q',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'R',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'S',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'T',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'U',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'V',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'W',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'X',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Y',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Z',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: blueColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 14,
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: [
                    // search
                    Container(
                      margin: EdgeInsets.only(bottom: 19),
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icon_search.png',
                            width: 16,
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration.collapsed(
                                hintStyle: textBold.copyWith(
                                  fontSize: 12,
                                  color: grey,
                                ),
                                hintText: 'Search',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // tile message
                    Row(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/image_photo3.png',
                                  width: 45,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 35,
                                  ),
                                  width: 19,
                                  height: 19,
                                  decoration: BoxDecoration(
                                    color: grey.withOpacity(0.5),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.close,
                                    color: backgroundWhite,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Mensa Rob',
                              style: textBold.copyWith(
                                fontSize: 11,
                                color: primaryColor,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/image_photo3.png',
                                  width: 45,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 35,
                                  ),
                                  width: 19,
                                  height: 19,
                                  decoration: BoxDecoration(
                                    color: grey.withOpacity(0.5),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.close,
                                    color: backgroundWhite,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Mensa Rob',
                              style: textBold.copyWith(
                                fontSize: 11,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // divider
                    Divider(
                      thickness: 2,
                    ),

                    // human
                    AddNewMessageTile(false),
                    AddNewMessageTile(true),
                    AddNewMessageTile(true),
                    AddNewMessageTile(false),
                    AddNewMessageTile(true),
                    AddNewMessageTile(true),
                    AddNewMessageTile(false),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundWhite,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Go Back',
                  style: textBold.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: darkBlueColor,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    'Add Participants',
                    style: textBold.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    '4/30',
                    style: textBold.copyWith(
                      fontSize: 12,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddNewMessageNext();
                  }));
                },
                child: Text(
                  'Next',
                  style: textBold.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: darkBlueColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: body(),
    );
  }
}
