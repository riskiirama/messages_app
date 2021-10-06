part of 'widget.dart';

class AddNewMessagePage extends StatelessWidget {
  const AddNewMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget body() {
      return ListView(
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
                        Text('Mensa Rob')
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
                        Text('Mensa Rob')
                      ],
                    ),
                  ],
                ),
              ],
            ),
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
              Text(
                'Go Back',
                style: textBold.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: darkBlueColor,
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
              Text(
                'NEXT',
                style: textBold.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: darkBlueColor,
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
