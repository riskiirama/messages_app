import 'package:flutter/material.dart';
import 'package:messages/theme.dart';

import 'package:messages/ui/home_screen.dart';
import 'package:messages/ui/message_screen.dart';
import 'package:messages/ui/more_screen.dart';
import 'package:messages/ui/my_account.dart';
import 'package:messages/ui/search_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          selectedItemColor: darkBlueColor,
          backgroundColor: Color(0xFFFFFFFF),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            print(value);
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/icon_home.png',
                  width: 21,
                  color: currentIndex == 0
                      ? darkBlueColor
                      : Color(
                          0xff808191,
                        ),
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/icon_message.png',
                  width: 20,
                  color: currentIndex == 1
                      ? darkBlueColor
                      : Color(
                          0xff808191,
                        ),
                ),
              ),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/icon_search.png',
                  width: 20,
                  color: currentIndex == 2
                      ? darkBlueColor
                      : Color(
                          0xff808191,
                        ),
                ),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: darkBlueColor),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/image_photo.png',
                  width: 18,
                ),
              ),
              label: 'My Account',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/icon_menu.png',
                  width: 18,
                  color: currentIndex == 3
                      ? darkBlueColor
                      : Color(
                          0xff808191,
                        ),
                ),
              ),
              label: 'More',
            ),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomeScreen();
        case 1:
          return Message();
        case 2:
          return SearchScreen();
        case 3:
          return MyAccountScreen();
        case 4:
          return MoreScreen();
        default:
          return HomeScreen();
      }
    }

    return Scaffold(
      body: body(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
