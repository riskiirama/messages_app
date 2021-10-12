part of 'pages.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final items = List<String>.generate(1, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    Widget directMessage() {
      return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 32),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });

              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('$item dismissed')));
            },
            background: Container(
              alignment: Alignment.centerRight,
              child: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                    color: Color(0xffFF2A52), shape: BoxShape.circle),
                child: Icon(
                  Icons.delete_forever,
                  color: backgroundWhite,
                ),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/image_photo2.png',
                  width: 62,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Kunle Coker',
                              style: sfbold.copyWith(fontSize: 15),
                            ),
                          ),
                          Text(
                            '15:10',
                            style: sfbold.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Benson, will you be going to the AquaFest event this June?',
                              style: sfreguler.copyWith(fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: blueColor,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '3',
                                style: sfreguler.copyWith(
                                  fontSize: 10,
                                  color: backgroundWhite,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget notifications() {
      return ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          Container(
            margin: EdgeInsets.only(left: 18, bottom: 10),
            child: Text(
              'Today',
              style: sfsemibold.copyWith(
                fontSize: 13,
                color: Color(0xff505050),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/image_empty.png',
              width: 40,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Kunle Badejo ',
                      style: sfbold.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'has invited you to join Ibloov',
                        maxLines: 1,
                        style: sfbold.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff505050),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'has invited you to join Ibloov',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff505050),
                  ),
                ),
              ],
            ),
            trailing: Text(
              '2min',
            ),
            dense: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // todo Button accept
              Container(
                width: 159,
                height: 35,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: darkBlueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Accept',
                    style: sfbold.copyWith(
                      fontSize: 13,
                      color: backgroundWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 10,
              ),

              // todo Button decline
              Container(
                width: 83,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: darkBlueColor,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Decline',
                    style: sfbold.copyWith(
                      fontSize: 13,
                      color: grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 18, bottom: 10, top: 20),
            child: Text(
              'Yesterday',
              style: sfsemibold.copyWith(
                fontSize: 13,
                color: Color(0xff505050),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/image_empty.png',
              width: 40,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Kunle Badejo ',
                      style: sfbold.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'has invited you to join Ibloov',
                        maxLines: 1,
                        style: sfbold.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff505050),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'has invited you to join Ibloov',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff505050),
                  ),
                ),
              ],
            ),
            trailing: Text(
              '2min',
            ),
            dense: true,
          ),
        ],
      );
    }

    Widget tabBarView() {
      return TabBarView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessageDetailPage()));
            },
            child: directMessage(),
          ),
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 32,
            ),
            children: [
              GroupMessage(
                isNotif: true,
              ),
            ],
          ),
          notifications(),
        ],
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundLinear,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            flexibleSpace: Center(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 18,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Messages',
                          style: sfbold.copyWith(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AddNewMessagePage();
                            }));
                          },
                          child: Image.asset(
                            'assets/chat_line.png',
                            width: 24,
                          ),
                        ),
                      ],
                    ),

                    // SEACRH
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: backgroundWhite,
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
                              decoration:
                                  InputDecoration.collapsed(hintText: 'Search'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            backgroundColor: backgroundLinear,
            elevation: 0,
            bottom: TabBar(
              labelStyle: sfbold.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              isScrollable: true,
              labelColor: primaryColor,
              indicatorColor: darkBlueColor,
              indicatorPadding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              tabs: [
                Tab(
                  text: 'Direct Messages',
                  iconMargin: EdgeInsets.only(left: 18, right: 18),
                ),
                Tab(
                  text: 'Group Messages',
                ),
                Tab(
                  text: 'Notifications',
                )
              ],
            ),
          ),
        ),
        body: tabBarView(),
      ),
    );
  }
}
