part of 'widget.dart';

class FollowersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundWhite,
        elevation: 0,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(left: 22),
          child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Go Back',
                style: sfmedium.copyWith(
                  fontSize: 15,
                  color: darkBlueColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Followers',
          style: sfsemibold.copyWith(
            fontSize: 15,
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 20,
        ),
        child: ListView(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_profile.png',
                  width: 38,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Text(
                    'Opeolu Tijani',
                    style: sfmedium.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 75,
                  height: 35,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: darkBlueColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      'Following',
                      style: sfmedium.copyWith(
                        fontSize: 12,
                        color: backgroundWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 54, bottom: 15),
              child: Divider(),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/image_profile.png',
                  width: 38,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Text(
                    'Opeolu Tijani',
                    style: sfmedium.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 75,
                  height: 35,
                  decoration: BoxDecoration(
                      border: Border.all(color: darkBlueColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Following',
                      style: sfmedium.copyWith(
                        fontSize: 12,
                        color: darkBlueColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 54, bottom: 15),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
