import 'package:flutter/material.dart';
import 'package:messages/theme.dart';
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
              children: [
                ChatMessage(
                  isCeklis: false,
                  isJarak: false,
                  isNotif: true,
                ),
                ChatMessage(
                  isCeklis: true,
                  isJarak: true,
                  isNotif: false,
                ),
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
                      style: textBold.copyWith(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
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
