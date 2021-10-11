part of 'widget.dart';

class AddNewMessageNext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return ListView(
        children: [
          // header
          Container(
            margin: EdgeInsets.only(
              top: 26,
              left: 20,
              right: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image_photo4.png',
                  width: 68,
                ),
                SizedBox(
                  width: 13,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration.collapsed(
                            hintStyle: sfbold.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                            hintText: 'Aurora Couture Admin'),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      TextField(
                        maxLines: 3,
                        decoration: InputDecoration.collapsed(
                            hintStyle: sfbold.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                            hintText:
                                'A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Ac tortor dignissim convallis aenean. '),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // participants
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            height: 34,
            color: Color(0xffEFEFEF),
            child: Row(
              children: [
                Text(
                  'Participants:',
                  style: sfbold.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '5',
                  style: sfbold.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          // tile message
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Row(
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
                      style: sfbold.copyWith(
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
                      style: sfbold.copyWith(
                        fontSize: 11,
                        color: primaryColor,
                      ),
                    ),
                  ],
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffEFEFEF),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Go Back',
                  style: sfbold.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: darkBlueColor,
                  ),
                ),
              ),
              Text(
                'New Group',
                style: sfbold.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: primaryColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddNewMessageGroup();
                  }));
                },
                child: Text(
                  'Create',
                  style: sfbold.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: darkBlueColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: body(),
      ),
    );
  }
}
