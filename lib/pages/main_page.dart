part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customNav() {
      return CurvedNavigationBar(
        buttonBackgroundColor: darkBlueColor,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Image.asset(
            'assets/icon_home.png',
            width: 21,
            color: currentIndex == 0
                ? backgroundWhite
                : Color(
                    0xff808191,
                  ),
          ),
          Image.asset(
            'assets/icon_message.png',
            width: 20,
            color: currentIndex == 1
                ? backgroundWhite
                : Color(
                    0xff808191,
                  ),
          ),
          Image.asset(
            'assets/icon_search.png',
            width: 20,
            color: currentIndex == 2
                ? backgroundWhite
                : Color(
                    0xff808191,
                  ),
          ),
          Image.asset(
            'assets/image_photo.png',
            width: 18,
          ),
          Image.asset(
            'assets/icon_menu.png',
            width: 18,
            color: currentIndex == 4
                ? backgroundWhite
                : Color(
                    0xff808191,
                  ),
          ),
        ],
        onTap: (value) {
          print(value);
          setState(() {
            currentIndex = value;
          });
        },
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return MessagePage();
        case 2:
          return SearchPage();
        case 3:
          return MyAccountPage();
        case 4:
          return MorePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      body: body(),
      bottomNavigationBar: customNav(),
    );
  }
}
