part of 'pages.dart';

class MessagePage extends StatelessWidget {
  final isSearch = true;

  @override
  Widget build(BuildContext context) {
    Widget tabBarView() {
      return TabBarView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessageDetailPage()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
              child: ListView(
                children: [
                  ChatMessage(
                    isCeklis: false,
                    isJarak: false,
                    isNotif: true,
                  ),
                  ChatMessage(
                    isCeklis: false,
                    isJarak: false,
                    isNotif: true,
                  ),
                  ChatMessage(
                    isCeklis: true,
                    isJarak: true,
                    isNotif: true,
                  ),
                  ChatMessage(
                    isCeklis: false,
                    isJarak: false,
                    isNotif: true,
                  ),
                ],
              ),
            ),
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
          Container(
            margin: EdgeInsets.only(
              left: 18,
              right: 18,
            ),
            child: ListView(
              children: [
                SizedBox(height: 20),
                Text(
                  'Today',
                  style: textBold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff505050),
                  ),
                ),
                SizedBox(height: 20),
                NotifToday(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Button accept
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
                          style: textBold.copyWith(
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

                    // Button decline
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
                          style: textBold.copyWith(
                            fontSize: 13,
                            color: grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Yesterday',
                  style: textBold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff505050),
                  ),
                ),
                SizedBox(height: 20),
                NotifYesterday(),
                SizedBox(height: 20),
                Text(
                  'Jul 10, 2021',
                  style: textBold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff505050),
                  ),
                ),
                SizedBox(height: 20),
                NotifDateTime(),
              ],
            ),
          )
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
                          style: textBold.copyWith(
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
              labelStyle: textBold.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
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
