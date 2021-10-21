part of 'pages.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final items = List<String>.generate(1, (i) => "Item ${i + 1}");
  final items2 = List<String>.generate(1, (i) => "list ${i + 1}");

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

    Widget groupMessage() {
      return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 32),
        itemCount: items2.length,
        itemBuilder: (context, index) {
          final list = items2[index];
          return Dismissible(
            key: Key(list),
            onDismissed: (direction) {
              setState(() {
                items2.removeAt(index);
              });

              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('$list dismissed')));
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
                  'assets/image_photo.png',
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
                              'Road to Lagos Fest',
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
                              '+234 810 124 0399: I need to be there to see it happen life & direct',
                              style: sfreguler.copyWith(fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            width: 27,
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
          groupMessage(),
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

class MessageDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
          margin: EdgeInsets.only(top: 14),
          width: 295,
          decoration: BoxDecoration(
            color: Color(0XFFE9E8E8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icon_lock.png',
                width: 9,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Messages and calls are end-to-end encrypted. No oneoutside of this chat, can have access to your conversation. Tap to learn more.',
                  textAlign: TextAlign.center,
                  style: sfreguler.copyWith(
                    fontSize: 9,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget replyChat() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ChatBubbleReply(
            text: 'I’m cool, what’s happening?',
            time: '12:30',
            bubble: true,
          ),
          ChatBubbleReply(
            text:
                'I just joined this platform & it’s\n been amazing. How\n long have you been here?',
            time: '12:30',
            bubble: false,
          ),
        ],
      );
    }

    Widget chatInput() {
      return Container(
        padding: EdgeInsets.only(left: 15, right: 26),
        height: 88,
        decoration: BoxDecoration(
          border: Border.all(
            color: greyColor,
          ),
          color: backgroundWhite,
        ),
        width: double.infinity,
        child: Row(
          children: [
            Image.asset(
              'assets/icon_file.png',
              width: 30,
            ),
            SizedBox(width: 4),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: greyColor,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 45,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Center(
                  child: TextFormField(
                    decoration:
                        InputDecoration.collapsed(hintText: 'Type a message'),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Image.asset(
              'assets/icon_camera.png',
              width: 24,
            )
          ],
        ),
      );
    }

    Widget today() {
      return Center(
        child: Container(
          width: 107,
          height: 24,
          decoration: BoxDecoration(
            color: Color(0xffE9E8E8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'Today',
              style: sfbold.copyWith(
                fontSize: 12,
              ),
            ),
          ),
        ),
      );
    }

    Widget replyChatToday() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 22,
            ),
            height: 68,
            width: 234,
            decoration: BoxDecoration(
              color: blueColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
            ),
            child: Center(
              child: Text(
                'Hello Kunle, are you going to\nthe Burna Boy Live Concert?',
                style: sfbold.copyWith(
                  color: backgroundWhite,
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '12:32',
                style: sfbold.copyWith(fontSize: 10),
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                'assets/icon_read.png',
                width: 17,
              )
            ],
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: chatInput(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundWhite,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/icon_back.png',
                width: 55,
              ),
            ),
            SizedBox(width: 13),
            Image.asset(
              'assets/image_photo.png',
              width: 41,
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Anthony Oguns',
                  style: sfbold.copyWith(
                    fontSize: 14,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Online',
                  style: sfbold.copyWith(
                    fontSize: 12,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.search,
              size: 24,
              color: blueColor,
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 24, right: 24),
        children: [
          header(),
          SizedBox(height: 14),
          ChatBubble(
            text: 'Anthony, what’s up?',
          ),
          SizedBox(height: 10),
          replyChat(),
          SizedBox(height: 10),
          ChatBubble(
            text: 'A little over a month.',
          ),
          SizedBox(
            height: 22,
          ),
          today(),
          replyChatToday(),
          SizedBox(height: 55),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;

  const ChatBubble({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 14,
          ),
          width: 157,
          height: 54,
          decoration: BoxDecoration(
            color: Color(0xffEFEFEF),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(24),
              topRight: Radius.circular(24),
              bottomLeft: Radius.circular(24),
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: sfbold,
            ),
          ),
        ),
        SizedBox(height: 2),
        SizedBox(
          width: 240,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '12:10',
                style: sfbold.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ChatBubbleReply extends StatelessWidget {
  final String text;
  final String time;
  final bool bubble;

  const ChatBubbleReply(
      {Key? key, required this.text, required this.time, required this.bubble})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return bubble
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.only(
                  top: 14,
                ),
                width: 234,
                height: 54,
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                ),
                child: Center(
                  child: Text(text,
                      style: sfbold.copyWith(
                        color: backgroundWhite,
                      )),
                ),
              ),
              SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: sfbold.copyWith(fontSize: 10),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/icon_read.png',
                    width: 17,
                  )
                ],
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.only(
                  top: 14,
                ),
                width: 234,
                height: 85,
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: sfbold.copyWith(
                      color: backgroundWhite,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: sfbold.copyWith(fontSize: 10),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/icon_read.png',
                    width: 17,
                  )
                ],
              ),
            ],
          );
  }
}

class AddNewMessagePage extends StatefulWidget {
  @override
  _AddNewMessagePageState createState() => _AddNewMessagePageState();
}

class _AddNewMessagePageState extends State<AddNewMessagePage> {
  List<String> list = [
    'angel',
    'bubbles',
    'shimmer',
    'angelic',
    'bubbly',
    'glimmer',
    'baby',
    'pink',
    'little',
    'butterfly',
    'sparkly',
    'doll',
    'sweet',
    'sparkles',
    'dolly',
    'sweetie',
    'sprinkles',
    'lolly',
    'princess',
    'fairy',
    'honey',
    'snowflake',
    'pretty',
    'sugar',
    'cherub',
    'lovely',
    'blossom',
    'Ecophobia',
    'Hippophobia',
    'Scolionophobia',
    'Ergophobia',
    'Musophobia',
    'Zemmiphobia',
    'Geliophobia',
    'Tachophobia',
    'Hadephobia',
    'Radiophobia',
    'Turbo Slayer',
    'Cryptic Hatter',
    'Crash TV',
    'Blue Defender',
    'Toxic Headshot',
    'Iron Merc',
    'Steel Titan',
    'Stealthed Defender',
    'Blaze Assault',
    'Venom Fate',
    'Dark Carnage',
    'Fatal Destiny',
    'Ultimate Beast',
    'Masked Titan',
    'Frozen Gunner',
    'Bandalls',
    'Wattlexp',
    'Sweetiele',
    'HyperYauFarer',
    'Editussion',
    'Experthead',
    'Flamesbria',
    'HeroAnhart',
    'Liveltekah',
    'Linguss',
    'Interestec',
    'FuzzySpuffy',
    'Monsterup',
    'MilkA1Baby',
    'LovesBoost',
    'Edgymnerch',
    'Ortspoon',
    'Oranolio',
    'OneMama',
    'Dravenfact',
    'Reallychel',
    'Reakefit',
    'Popularkiya',
    'Breacche',
    'Blikimore',
    'StoneWellForever',
    'Simmson',
    'BrightHulk',
    'Bootecia',
    'Spuffyffet',
    'Rozalthiric',
    'Bookman'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget searchHuman() {
      return Container(
        height: 200,
        color: backgroundWhite,
        child: Column(
          children: [
            //todo serach
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 19,
                vertical: 29,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xffEFEFEF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: grey,
                    size: 16,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintStyle: sfbold.copyWith(
                          fontSize: 12,
                          color: grey,
                        ),
                        hintText: 'Search',
                      ),
                    ),
                  )
                ],
              ),
            ),
            //todo human
            Container(
              margin: EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 9,
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/image_photo2.png',
                            width: 45,
                          ),
                          Text(
                            'Mensa Rob',
                            style: sfbold.copyWith(
                              fontSize: 11,
                              color: primaryColor,
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 19,
                        height: 19,
                        margin: EdgeInsets.only(
                          left: 35,
                        ),
                        decoration: BoxDecoration(
                          color: grey,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.close,
                          size: 15,
                          color: backgroundWhite,
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
    }

    Widget body() {
      return Container(
        margin: EdgeInsets.only(top: 200),
        child: AlphabetScrollView(
          list: list.map((e) => AlphaModel(e)).toList(),
          // isAlphabetsFiltered: false,
          alignment: LetterAlignment.right,
          itemExtent: 50,
          unselectedTextStyle: TextStyle(
              fontSize: 11, fontWeight: FontWeight.normal, color: Colors.black),
          selectedTextStyle:
              TextStyle(fontWeight: FontWeight.bold, color: blueColor),

          itemBuilder: (_, k, id) {
            return Container(
              margin: EdgeInsets.only(
                right: 20,
              ),
              child: ListTile(
                title: Text('$id'),
                leading: Image.asset(
                  'assets/image_photo2.png',
                  width: 38,
                ),
                trailing: Radio<bool>(
                  value: false,
                  groupValue: selectedIndex != k,
                  onChanged: (value) {
                    setState(() {
                      selectedIndex = k;
                    });
                  },
                ),
              ),
            );
          },
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundWhite,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: backgroundWhite,
          elevation: 0,
          flexibleSpace: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
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
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: darkBlueColor,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add Participants',
                      style: sfbold.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: primaryColor,
                      ),
                    ),
                    Text(
                      '4/30',
                      style: sfbold.copyWith(
                        fontSize: 12,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AddNewMessageNext();
                    }));
                  },
                  child: Text(
                    'Next',
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
        ),
        body: Stack(
          children: [
            body(),
            searchHuman(),
          ],
        ),
      ),
    );
  }
}

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

class AddNewMessageGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return ListView(
        children: [
          //todo attention message
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              top: 14,
              left: 26,
              right: 26,
            ),
            width: double.infinity,
            height: 59,
            decoration: BoxDecoration(
              color: Color(0xffE9E8E8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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

          // todo message group
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
                        style: sfreguler.copyWith(color: primaryColor),
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
                        style: sfreguler.copyWith(color: primaryColor),
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
                    style: sfreguler.copyWith(color: primaryColor),
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

          //todo admin
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
                  style: sfreguler.copyWith(
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
                  style: sfbold.copyWith(
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
                        style: sfbold.copyWith(
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      'see more',
                      style: sfbold.copyWith(
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
                        style: sfbold.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '22',
                      style: sfbold.copyWith(
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
                        style: sfbold.copyWith(
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
                          style: sfbold.copyWith(
                            color: grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'PARTICIPANTS',
                            style: sfbold.copyWith(
                              color: grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Search',
                          style: sfbold.copyWith(
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
                            style: sfbold.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          '(You)',
                          style: sfbold.copyWith(
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
                        style: sfbold.copyWith(
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
                    style: sfbold.copyWith(
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
                  style: sfbold.copyWith(
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
