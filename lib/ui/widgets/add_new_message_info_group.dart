part of 'widget.dart';

class AddNewMessageInfoGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return ListView(
        children: [
          Image.asset('assets/group_photo.png'),
          Container(
            margin: EdgeInsets.only(
              top: 25,
              left: 18,
              right: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aurora Couture Admin',
                  style: textBold.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Ac tortor dignissim convallis aenean. Tristique senectus et netus et malesuada fames ... ',
                        style: textBold.copyWith(
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      'see more',
                      style: textBold.copyWith(
                        fontSize: 12,
                        color: blueColor,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),

                // image link
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 51,
                      height: 51,
                      decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Icon(
                        Icons.image,
                        color: backgroundWhite,
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Expanded(
                      child: Text(
                        'Media, Links and Docs',
                        style: textBold.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '22',
                      style: textBold.copyWith(
                        fontWeight: FontWeight.bold,
                        color: grey,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: grey,
                      size: 15,
                    ),
                  ],
                ),

                // search link
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 51,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color(0xffED9442),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Icon(
                        Icons.search,
                        color: backgroundWhite,
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Expanded(
                      child: Text(
                        'Chat Search',
                        style: textBold.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: grey,
                      size: 15,
                    ),
                  ],
                ),

                SizedBox(
                  height: 11,
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: 29,
                ),

                // content
                Column(
                  children: [
                    // participant
                    Row(
                      children: [
                        Text(
                          '2 ',
                          style: textBold.copyWith(
                            color: grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'PARTICIPANTS',
                            style: textBold.copyWith(
                              color: grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Search',
                          style: textBold.copyWith(
                            color: blueColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    //user
                    Row(
                      children: [
                        Image.asset(
                          'assets/image_photo3.png',
                          width: 38,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            'Kunle Badejo',
                            style: textBold.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          '(You)',
                          style: textBold.copyWith(
                            color: grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Admin',
                        style: textBold.copyWith(
                          color: grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 55),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: backgroundWhite,
          title: Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 150,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Color(0xff4272ED),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Aurora CoutureAurora Couture',
                    style: textBold.copyWith(
                      color: Color(0xff4272ED),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Group Info',
                  style: textBold.copyWith(
                    fontSize: 14,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
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
