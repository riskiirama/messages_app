import 'package:flutter/material.dart';
import 'package:messages/theme.dart';
import 'package:messages/ui/pages/message_detail.dart';
import 'package:messages/widgets/chat_message.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget tabBarView() {
      return TabBarView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MessageDetailPage()),
                    );
                  },
                  child: ChatMessage(
                    'assets/image_photo.png',
                    'Kunle Coker',
                    'Hello Kunle, are you going to the\nBurna Boy Live Concert?',
                    '15:21',
                    notifikasi: false,
                    vektor: true,
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(height: 12),
                ChatMessage(
                  'assets/image_photo2.png',
                  'Benson Erabor',
                  'Benson, will you be going to the\nAquaFest event this June?',
                  '15:10',
                  notifikasi: true,
                  vektor: false,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(height: 12),
                ChatMessage(
                  'assets/image_photo3.png',
                  'Cynthia Chukwudiora',
                  'Hello Cynthia\nAny chance we can go out soon?',
                  '13:15',
                  notifikasi: true,
                  vektor: false,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(height: 12),
                ChatMessage(
                  'assets/image_photo4.png',
                  'Ernest Ihenacho',
                  'Hello Ernest,I tried reaching you, it\'s\nabout the business idea',
                  '11:19',
                  notifikasi: false,
                  vektor: true,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
          Center(
            child: Text('2'),
          ),
          Center(
            child: Text('3'),
          ),
        ],
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundLinear,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            flexibleSpace: Center(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Messages',
                      style: primaryText.copyWith(
                        fontSize: 34,
                        fontWeight: bold,
                      ),
                    ),
                    Image.asset(
                      'assets/chat_line.png',
                      width: 24,
                    )
                  ],
                ),
              ),
            ),
            backgroundColor: backgroundLinear,
            elevation: 0,
            bottom: TabBar(
              labelStyle: primaryText.copyWith(fontWeight: semiBold),
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
