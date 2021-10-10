part of 'widget.dart';

class AddNewMessageGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return ListView(
        children: [
          // attention message
          Container(
            margin: EdgeInsets.only(
              top: 14,
              left: 26,
              right: 26,
            ),
            padding: EdgeInsets.only(
              left: 35,
              right: 35,
            ),
            width: double.infinity,
            height: 59,
            decoration: BoxDecoration(
              color: Color(0xffE9E8E8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  size: 13,
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  'Messages and calls are end-to-end encrypted. No one \noutside of this chat, can have access to your \nconversation. Tap to learn more.',
                  style: sfbold.copyWith(
                    fontSize: 9,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // message group
          Container(
            margin: EdgeInsets.only(
              top: 21,
              left: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // user 1
                Container(
                  padding: EdgeInsets.only(
                    top: 9,
                    left: 12,
                    right: 20,
                    bottom: 9,
                  ),
                  width: 235,
                  decoration: BoxDecoration(
                    color: Color(0xffEFEFEF),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Badmus Eniola',
                        style: sfbold.copyWith(
                          color: darkGreyColor,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Hello Everyone, It’s a pleasure to be here. super excited.',
                        style: sfbold.copyWith(
                          color: Color(0xff231101),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 190, top: 8),
                  child: Text(
                    '12:10',
                    style: sfbold.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ),

                // user 2
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(
                    top: 9,
                    left: 12,
                    right: 20,
                    bottom: 9,
                  ),
                  width: 235,
                  decoration: BoxDecoration(
                    color: Color(0xffEFEFEF),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mensa Roberts',
                        style: sfbold.copyWith(
                          color: Color(0xff00BA88),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Hello Everyone, It’s a pleasure to be here. super excited.',
                        style: sfbold.copyWith(
                          color: Color(0xff231101),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(
                    top: 9,
                    left: 12,
                    right: 20,
                    bottom: 9,
                  ),
                  width: 235,
                  decoration: BoxDecoration(
                    color: Color(0xffEFEFEF),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  child: Text(
                    'It’s always a pleasure to be in a group with people of like-minds looking at building something great',
                    style: sfbold.copyWith(
                      color: Color(0xff231101),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 190, top: 8),
                  child: Text(
                    '12:10',
                    style: sfbold.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // admin
          Container(
            margin: EdgeInsets.only(
              top: 21,
              left: 127,
              right: 22,
            ),
            padding: EdgeInsets.only(
              top: 9,
              left: 12,
              right: 20,
              bottom: 9,
            ),
            width: 235,
            decoration: BoxDecoration(
              color: Color(0xff4272ED),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You',
                  style: sfbold.copyWith(
                    color: backgroundWhite,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Welcome guys, it’s a pleasure to have y’all here.',
                  style: sfbold.copyWith(
                    color: backgroundWhite,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40, top: 8),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                '12:10',
                style: sfbold.copyWith(
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: backgroundWhite,
          title: Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Row(
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
                      color: grey,
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  'assets/image_photo3.png',
                  width: 41,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AddNewMessageInfoGroup();
                          }));
                        },
                        child: Text(
                          'Aurora Couture Admin',
                          style: sfbold.copyWith(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Aurora Couture Admin',
                              style: sfbold.copyWith(
                                color: primaryColor,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            ',',
                            style: sfbold.copyWith(
                              color: primaryColor,
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Expanded(
                            child: Text(
                              'Aurora Couture Admin',
                              style: sfbold.copyWith(
                                color: primaryColor,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    color: blueColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: body(),
    );
  }
}
