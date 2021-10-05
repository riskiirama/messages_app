import 'package:flutter/material.dart';
import 'package:messages/theme.dart';
import 'package:messages/widgets/chat_bubble.dart';
import 'package:messages/widgets/chat_bubble_reply.dart';

class MessageDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          margin: EdgeInsets.only(top: 14),
          width: 295,
          height: 59,
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
              Text(
                'Messages and calls are end-to-end encrypted. No one\noutside of this chat, can have access to your\nconversation. Tap to learn more.',
                textAlign: TextAlign.center,
                style: primaryText.copyWith(
                  fontSize: 9,
                  fontWeight: medium,
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
              style: primaryText.copyWith(
                fontWeight: semiBold,
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
                style: primaryText.copyWith(
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
                style: primaryText.copyWith(fontSize: 10),
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
                  style: primaryText.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Online',
                  style: primaryText.copyWith(
                    fontWeight: regular,
                    fontSize: 12,
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
